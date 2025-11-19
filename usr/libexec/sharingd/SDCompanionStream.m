@interface SDCompanionStream
- (NSFileHandle)fileHandle;
- (SDCompanionStream)initWithAuthorData:(id)a3 streamHandler:(id)a4;
- (SDCompanionStreamDelegate)delegate;
- (int)setBufferSize:(int)a3 socket:(int)a4;
- (void)dealloc;
- (void)getStreamsWithCompletionHandler:(id)a3;
- (void)handleOpenedStream;
- (void)handleStreamRequest:(id)a3;
- (void)handleStreamResponse:(id)a3;
- (void)logClientReceived;
- (void)logClientSent;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)notifyStreamRequestWithError:(id)a3;
- (void)readClientStream;
- (void)sendInitialRequest;
- (void)setBundleID:(id)a3;
- (void)start;
- (void)startBrowser;
- (void)stop;
- (void)stopIfReady;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)streamHandler:(id)a3 didReceiveMessage:(id)a4;
- (void)streamHandler:(id)a3 didReceiveStreamData:(id)a4;
- (void)streamHandlerDidClose:(id)a3 withError:(id)a4;
- (void)switchToStreaming;
- (void)writeClientStream;
- (void)writeNetworkStream;
@end

@implementation SDCompanionStream

- (SDCompanionStream)initWithAuthorData:(id)a3 streamHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SDCompanionStream;
  v9 = [(SDCompanionStream *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorData, a3);
    objc_storeStrong(&v10->_streamHandler, a4);
    *&v10->_initiator = 0;
    v10->_clientSent = 0;
    identifier = v10->_identifier;
    v10->_identifier = 0;

    v10->_clientReceived = 0;
    netServiceBrowser = v10->_netServiceBrowser;
    v10->_netServiceBrowser = 0;

    v10->_networkBufferSpaceAvailable = 1;
    v13 = +[NSMutableData data];
    clientStreamData = v10->_clientStreamData;
    v10->_clientStreamData = v13;

    v15 = +[NSMutableData data];
    networkStreamData = v10->_networkStreamData;
    v10->_networkStreamData = v15;

    v10->_readFromClient = 0;
    v10->_wroteToClient = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(SDCompanionStream *)self stop];
  v3.receiver = self;
  v3.super_class = SDCompanionStream;
  [(SDCompanionStream *)&v3 dealloc];
}

- (void)start
{
  [(SDStreamHandler *)self->_streamHandler setDelegate:self];
  streamHandler = self->_streamHandler;

  [(SDStreamHandler *)streamHandler start];
}

- (void)stop
{
  v2 = self;
  v3 = [(SDCompanionStream *)v2 streamHandler];

  if (v3)
  {
    v4 = [(SDCompanionStream *)v2 streamHandler];
    [v4 stop];
  }

  v5 = [(SDCompanionStream *)v2 clientInputStream];

  if (v5)
  {
    v6 = [(SDCompanionStream *)v2 clientInputStream];
    [v6 close];

    v7 = [(SDCompanionStream *)v2 clientInputStream];
    [v7 setDelegate:0];

    [(SDCompanionStream *)v2 setClientInputStream:0];
  }

  v8 = [(SDCompanionStream *)v2 clientOutputStream];

  if (v8)
  {
    v9 = [(SDCompanionStream *)v2 clientOutputStream];
    [v9 close];

    v10 = [(SDCompanionStream *)v2 clientOutputStream];
    [v10 setDelegate:0];

    [(SDCompanionStream *)v2 setClientOutputStream:0];
  }

  v11 = [(SDCompanionStream *)v2 netServiceBrowser];

  if (v11)
  {
    v12 = [(SDCompanionStream *)v2 netServiceBrowser];
    [v12 stop];

    v13 = [(SDCompanionStream *)v2 netServiceBrowser];
    [v13 setDelegate:0];

    [(SDCompanionStream *)v2 setNetServiceBrowser:0];
    v14 = streams_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Stopped net service browser", buf, 2u);
    }
  }

  v15 = streams_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client streams closed", v19, 2u);
  }

  v16 = [(SDCompanionStream *)v2 streamHandler];
  if (v16)
  {
    goto LABEL_16;
  }

  v17 = [(SDCompanionStream *)v2 delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v16 = [(SDCompanionStream *)v2 delegate];
    [v16 companionStreamClosedStreams:v2];
LABEL_16:
  }
}

- (void)stopIfReady
{
  if (self->_shouldStop && ![(NSMutableData *)self->_networkStreamData length])
  {

    [(SDCompanionStream *)self stop];
  }
}

- (void)setBundleID:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple."])
  {
    [(SDStreamHandler *)self->_streamHandler setBundleID:v4];
  }

  else
  {
    v5 = streams_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Third party app client", v6, 2u);
    }
  }
}

- (void)getStreamsWithCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  streamsRequestHandler = self->_streamsRequestHandler;
  self->_streamsRequestHandler = v4;

  [(SDCompanionStream *)self sendInitialRequest];
  [(SDCompanionStream *)self startBrowser];
  self->_initiator = 1;
}

- (void)startBrowser
{
  if (!self->_netServiceBrowser)
  {
    v9 = v2;
    v10 = v3;
    v5 = objc_alloc_init(NSNetServiceBrowser);
    netServiceBrowser = self->_netServiceBrowser;
    self->_netServiceBrowser = v5;

    [(NSNetServiceBrowser *)self->_netServiceBrowser setDelegate:self];
    [(NSNetServiceBrowser *)self->_netServiceBrowser _setIncludesAWDL:1];
    [(NSNetServiceBrowser *)self->_netServiceBrowser searchForServicesOfType:@"_continuity._tcp." inDomain:@"local."];
    v7 = streams_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started net service browser", v8, 2u);
    }
  }
}

- (void)sendInitialRequest
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending initial request", buf, 2u);
  }

  v10[0] = @"StreamMessageType";
  v10[1] = @"StreamMessageVersion";
  v11[0] = &off_10090BF70;
  v11[1] = &off_10090BF88;
  v10[2] = @"RequestAuthorData";
  v11[2] = self->_authorData;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:NSKeyedArchiveRootObjectKey];
  streamHandler = self->_streamHandler;
  v7 = [v5 encodedData];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021C7C4;
  v8[3] = &unk_1008CE090;
  v8[4] = self;
  [(SDStreamHandler *)streamHandler sendMessage:v7 withCompletionHandler:v8];
}

- (void)switchToStreaming
{
  v3 = streams_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Switched from messages to Streams", v4, 2u);
  }

  [(SDStreamHandler *)self->_streamHandler setUsingMessages:0];
  [(SDCompanionStream *)self writeNetworkStream];
}

- (void)notifyStreamRequestWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_streamsRequestHandler)
  {
    if (v4)
    {
      v6 = streams_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10021E624();
      }

      (*(self->_streamsRequestHandler + 2))();
    }

    else
    {
      v8 = [(SDCompanionStream *)self fileHandle];
      if (v8)
      {
        (*(self->_streamsRequestHandler + 2))();
      }

      else
      {
        v9 = streams_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10021E694();
        }

        streamsRequestHandler = self->_streamsRequestHandler;
        v14 = NSLocalizedDescriptionKey;
        v15 = @"Could not create streams";
        v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v11];
        streamsRequestHandler[2](streamsRequestHandler, 0, v12);
      }
    }

    v7 = self->_streamsRequestHandler;
    self->_streamsRequestHandler = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (self->_initiator)
  {
    v7 = streams_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No handler for stream request", v13, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (NSFileHandle)fileHandle
{
  if (self->_fileHandle || self->_clientInputStream || self->_clientOutputStream)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16.version) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requested fileHandle more than once.", &v16, 2u);
    }

LABEL_6:

    goto LABEL_7;
  }

  *sock = 0;
  if (socketpair(1, 1, 0, sock))
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10021E6D0();
    }

    goto LABEL_6;
  }

  if (![(SDCompanionStream *)self setBufferSize:0x4000 socket:sock[0]]|| ![(SDCompanionStream *)self setBufferSize:0x4000 socket:sock[1]])
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10021E750();
    }

    goto LABEL_6;
  }

  v6 = [NSFileHandle alloc];
  v7 = [v6 initWithFileDescriptor:sock[0]];
  fileHandle = self->_fileHandle;
  self->_fileHandle = v7;

  writeStream = 0;
  readStream = 0;
  CFStreamCreatePairWithSocket(0, sock[1], &readStream, &writeStream);
  v9 = kCFStreamPropertyShouldCloseNativeSocket;
  CFReadStreamSetProperty(readStream, kCFStreamPropertyShouldCloseNativeSocket, kCFBooleanTrue);
  CFWriteStreamSetProperty(writeStream, v9, kCFBooleanTrue);
  clientInputStream = self->_clientInputStream;
  self->_clientInputStream = readStream;

  v11 = self->_clientInputStream;
  v12 = +[NSRunLoop mainRunLoop];
  [(NSInputStream *)v11 scheduleInRunLoop:v12 forMode:NSDefaultRunLoopMode];

  v16.version = 0;
  v16.info = self;
  v16.retain = &_CFRetain;
  v16.release = &_CFRelease;
  v16.copyDescription = &CFCopyDescription;
  CFReadStreamSetClient(self->_clientInputStream, 0x1BuLL, sub_10021D0CC, &v16);
  [(NSInputStream *)self->_clientInputStream open];
  clientOutputStream = self->_clientOutputStream;
  self->_clientOutputStream = writeStream;

  v14 = self->_clientOutputStream;
  v15 = +[NSRunLoop mainRunLoop];
  [(NSOutputStream *)v14 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

  [(NSOutputStream *)self->_clientOutputStream setDelegate:self];
  [(NSOutputStream *)self->_clientOutputStream open];
LABEL_7:
  v4 = self->_fileHandle;

  return v4;
}

- (int)setBufferSize:(int)a3 socket:(int)a4
{
  v6 = a3;
  result = setsockopt(a4, 0xFFFF, 4097, &v6, 4u);
  if ((result & 0x80000000) == 0)
  {
    result = setsockopt(a4, 0xFFFF, 4098, &v6, 4u);
    if (result >= 0)
    {
      return 1;
    }
  }

  return result;
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v5 = a4;
  v6 = streams_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Browser found net service = %@", &v7, 0xCu);
  }
}

- (void)streamHandler:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v17 = 0;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:&v17];

  v7 = v17;
  v8 = [NSSet setWithObject:objc_opt_class()];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [v6 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v10 forKey:NSKeyedArchiveRootObjectKey];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"StreamMessageType"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
      if (v15 == 1)
      {
        [(SDCompanionStream *)self handleStreamResponse:v12];
      }

      else if (!v15)
      {
        [(SDCompanionStream *)self handleStreamRequest:v12];
      }
    }

    else
    {
      v16 = streams_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10021E78C();
      }
    }
  }

  else
  {
    v14 = streams_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10021E7C8();
    }
  }
}

- (void)handleStreamRequest:(id)a3
{
  v4 = a3;
  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to create streams", buf, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:@"RequestAuthorData"];

  if (v6)
  {
    v7 = [SFCompanionService serviceFromAuthorData:v6];
    v8 = [v7 identifier];
    identifier = self->_identifier;
    self->_identifier = v8;

    if (v7)
    {
      v10 = [(SDCompanionStream *)self fileHandle];
      if (v10)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          v13 = objc_loadWeakRetained(&self->_delegate);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10021D604;
          v16[3] = &unk_1008CDAA8;
          v16[4] = self;
          [v13 continuationStream:self connectedToService:v7 withFileHandle:v10 acceptHandler:v16];
        }
      }

      else
      {
        v15 = streams_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10021E838();
        }

        [(SDCompanionStream *)self sendInitialResponse:0];
      }
    }

    else
    {
      v14 = streams_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10021E874();
      }

      [(SDCompanionStream *)self sendInitialResponse:0];
    }
  }
}

- (void)handleStreamResponse:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"CompanionStreamConnectResponse"];
  v5 = streams_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 BOOLValue];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received response to create stream (accepted = %@)", buf, 0xCu);
  }

  if ([v4 BOOLValue])
  {
    [(SDCompanionStream *)self switchToStreaming];
    [(SDCompanionStream *)self notifyStreamRequestWithError:0];
  }

  else
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Connection refused";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:61 userInfo:v8];
    [(SDCompanionStream *)self notifyStreamRequestWithError:v9];

    [(SDCompanionStream *)self stop];
  }
}

- (void)streamHandler:(id)a3 didReceiveStreamData:(id)a4
{
  [(NSMutableData *)self->_networkStreamData appendData:a4];
  if ([(NSMutableData *)self->_networkStreamData length]> 0x20000)
  {
    [(SDStreamHandler *)self->_streamHandler setShouldReadNetwork:0];
  }

  [(SDCompanionStream *)self writeClientStream];
}

- (void)streamHandlerDidClose:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = streams_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stream handler closed with error = %@", buf, 0xCu);
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  v8 = [v7 wirelessEnabled];

  if (!v8)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Could not create connection, wireless not enabled";
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = NSPOSIXErrorDomain;
    v11 = 50;
LABEL_8:
    v12 = [NSError errorWithDomain:v10 code:v11 userInfo:v9];
    [(SDCompanionStream *)self notifyStreamRequestWithError:v12];

    goto LABEL_9;
  }

  if (!v5)
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Connection lost";
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = NSPOSIXErrorDomain;
    v11 = 51;
    goto LABEL_8;
  }

  [(SDCompanionStream *)self notifyStreamRequestWithError:v5];
LABEL_9:
  [(SDStreamHandler *)self->_streamHandler setDelegate:0];
  streamHandler = self->_streamHandler;
  self->_streamHandler = 0;

  self->_shouldStop = 1;
  [(SDCompanionStream *)self stopIfReady];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      [(SDCompanionStream *)self handleOpenedStream];
      goto LABEL_22;
    }

    if (a4 != 2)
    {
      goto LABEL_22;
    }

    if ([v6 isEqual:self->_clientInputStream])
    {
      [(SDCompanionStream *)self readClientStream];
      goto LABEL_22;
    }

    v9 = streams_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10021E934();
    }

LABEL_21:

    goto LABEL_22;
  }

  switch(a4)
  {
    case 4uLL:
      if ([v6 isEqual:self->_clientOutputStream])
      {
        [(SDCompanionStream *)self writeClientStream];
        break;
      }

      v9 = streams_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received NSStreamEventHasSpaceAvailable on a stream other than an output stream", buf, 2u);
      }

      goto LABEL_21;
    case 8uLL:
      v8 = streams_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10021E8B0(v7);
      }

      goto LABEL_15;
    case 0x10uLL:
      v8 = streams_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stream end encountered, closing streams", v10, 2u);
      }

LABEL_15:

      [(SDCompanionStream *)self stop];
      break;
  }

LABEL_22:
}

- (void)handleOpenedStream
{
  if ([(NSInputStream *)self->_clientInputStream streamStatus]== 2 && [(NSOutputStream *)self->_clientOutputStream streamStatus]== 2)
  {
    v3 = streams_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client Streams Opened", v4, 2u);
    }
  }
}

- (void)writeClientStream
{
  if ([(NSOutputStream *)self->_clientOutputStream hasSpaceAvailable]&& [(NSMutableData *)self->_networkStreamData length])
  {
    v3 = [(NSOutputStream *)self->_clientOutputStream write:[(NSMutableData *)self->_networkStreamData bytes] maxLength:[(NSMutableData *)self->_networkStreamData length]];
    if (v3 >= 1)
    {
      if (!self->_clientReceived)
      {
        [(SDCompanionStream *)self logClientReceived];
      }

      v4 = [(NSMutableData *)self->_networkStreamData subdataWithRange:v3, [(NSMutableData *)self->_networkStreamData length]- v3];
      v5 = [NSMutableData dataWithData:v4];
      networkStreamData = self->_networkStreamData;
      self->_networkStreamData = v5;

      if ([(NSMutableData *)self->_networkStreamData length]< 0x18000)
      {
        [(SDStreamHandler *)self->_streamHandler setShouldReadNetwork:1];
      }

      v7 = +[SDStatusMonitor sharedMonitor];
      v8 = [v7 enableStreamDebugging];

      if (v8)
      {
        self->_wroteToClient += v3;
        v9 = streams_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          wroteToClient = self->_wroteToClient;
          *buf = 134217984;
          v15 = wroteToClient;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Total written to client = %ld", buf, 0xCu);
        }
      }

      [(SDCompanionStream *)self stopIfReady];

      return;
    }

    v12 = streams_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10021E970();
    }

LABEL_22:

    return;
  }

  v13 = +[SDStatusMonitor sharedMonitor];
  if ([v13 enableStreamDebugging])
  {
    v11 = [(NSOutputStream *)self->_clientOutputStream hasSpaceAvailable];

    if (v11)
    {
      return;
    }

    v12 = streams_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Queueing client write, no space available", buf, 2u);
    }

    goto LABEL_22;
  }
}

- (void)readClientStream
{
  if ([(SDCompanionStream *)self networkBufferSpaceAvailable])
  {
    bzero(buf, 0x4000uLL);
    v3 = [(NSInputStream *)self->_clientInputStream read:buf maxLength:0x4000];
    if (v3 < 1)
    {
      v8 = streams_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10021E9E0();
      }

      goto LABEL_13;
    }

    v4 = v3;
    if (!self->_clientSent)
    {
      [(SDCompanionStream *)self logClientSent];
    }

    clientStreamData = self->_clientStreamData;
    v6 = [NSData dataWithBytes:buf length:v4];
    [(NSMutableData *)clientStreamData appendData:v6];

    [(SDCompanionStream *)self writeNetworkStream];
    v7 = +[SDStatusMonitor sharedMonitor];
    LODWORD(v6) = [v7 enableStreamDebugging];

    if (v6)
    {
      self->_readFromClient += v4;
      v8 = streams_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        readFromClient = self->_readFromClient;
        v11 = 134217984;
        v12 = readFromClient;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Total read from client = %ld", &v11, 0xCu);
      }

LABEL_13:
    }
  }

  else
  {
    v10 = streams_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Network buffer is full, waiting to read from client", buf, 2u);
    }
  }
}

- (void)writeNetworkStream
{
  if ([(NSMutableData *)self->_clientStreamData length])
  {
    v8 = self->_clientStreamData;
    v3 = +[NSMutableData data];
    clientStreamData = self->_clientStreamData;
    self->_clientStreamData = v3;

    [(SDStreamHandler *)self->_streamHandler writeToStreamWithData:v8];
  }

  else
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    v6 = [v5 enableStreamDebugging];

    if (v6)
    {
      v7 = streams_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10021EA1C();
      }
    }
  }
}

- (void)logClientSent
{
  self->_clientSent = 1;
  v2 = streams_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client has written data", v3, 2u);
  }
}

- (void)logClientReceived
{
  self->_clientReceived = 1;
  v2 = streams_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client has read data", v3, 2u);
  }
}

- (SDCompanionStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end