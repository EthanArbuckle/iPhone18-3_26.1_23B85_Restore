@interface W5XPCConnection
- (BOOL)isAdvertising;
- (BOOL)isBrowsing;
- (NSArray)activeRequests;
- (NSArray)eventIDs;
- (NSSet)faultEventMonitoringPeers;
- (NSURL)additionalLog;
- (W5XPCConnection)initWithXPCConnection:(id)connection;
- (id)__activeRequestWithUUID:(id)d;
- (void)__logMessage:(id)message timestamped:(BOOL)timestamped;
- (void)associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply;
- (void)cancelAllRequestsAndReply:(id)reply;
- (void)cancelRequestWithUUID:(id)d OnPeer:(id)peer OfType:(int64_t)type reply:(id)reply;
- (void)cancelRequestWithUUID:(id)d reply:(id)reply;
- (void)collectLogs:(id)logs configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)collectLogsDiagnosticMode:(id)mode uuid:(id)uuid reply:(id)reply;
- (void)dealloc;
- (void)listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply;
- (void)log:(id)log timestamp:(BOOL)timestamp reply:(id)reply;
- (void)queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply;
- (void)queryDebugConfigurationForPeer:(id)peer reply:(id)reply;
- (void)queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply;
- (void)queryFaultEventCacheForPeer:(id)peer reply:(id)reply;
- (void)queryLocalPeerAndReply:(id)reply;
- (void)queryRegisteredDiagnosticsPeersWithReply:(id)reply;
- (void)queryStatusForPeer:(id)peer reply:(id)reply;
- (void)registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply;
- (void)requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply;
- (void)runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)runWiFiPerformanceLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply;
- (void)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply;
- (void)setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply;
- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply;
- (void)startMonitoringEvents:(id)events reply:(id)reply;
- (void)startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply;
- (void)startPeerDiscoveryWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply;
- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply;
- (void)stopMonitoringEvents:(id)events reply:(id)reply;
- (void)stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)stopPeerDiscoveryWithUUID:(id)d reply:(id)reply;
- (void)submitFaultEvent:(id)event reply:(id)reply;
- (void)unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply;
@end

@implementation W5XPCConnection

- (W5XPCConnection)initWithXPCConnection:(id)connection
{
  v16.receiver = self;
  v16.super_class = W5XPCConnection;
  v4 = [(W5XPCConnection *)&v16 init];
  v5 = v4;
  if (!connection)
  {
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  connectionCopy = connection;
  v5->_connection = connectionCopy;
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([(NSXPCConnection *)connectionCopy processIdentifier], buffer, 0x1000u) < 1)
  {
    goto LABEL_12;
  }

  v7 = [[NSString alloc] initWithCString:buffer encoding:4];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [objc_msgSend(v7 "lastPathComponent")];
  v5->_processName = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = dispatch_queue_create("com.apple.wifivelocity.xpc-connection", 0);
  v5->_queue = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v5->_mutableActiveRequests = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = objc_alloc_init(NSMutableArray);
  v5->_mutableEventIDs = v11;
  if (!v11 || (v12 = objc_alloc_init(NSMutableSet), (v5->_mutableFaultEventMonitoringPeers = v12) == 0) || (v13 = objc_alloc_init(NSDateFormatter), (v5->_formatter = v13) == 0) || ([(NSDateFormatter *)v13 setDateFormat:@"MM/dd/yy HH:mm:ss.SSS"], v14 = +[NSUUID UUID], (v5->_uuid = v14) == 0))
  {
LABEL_12:

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5XPCConnection;
  [(W5XPCConnection *)&v4 dealloc];
}

- (NSArray)activeRequests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100084FC8;
  v10 = sub_100084FD8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084FE4;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)eventIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100084FC8;
  v10 = sub_100084FD8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085128;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSSet)faultEventMonitoringPeers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100084FC8;
  v10 = sub_100084FD8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008526C;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBrowsing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008536C;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAdvertising
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008545C;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSURL)additionalLog
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100084FC8;
  v10 = sub_100084FD8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085590;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)__activeRequestWithUUID:(id)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mutableActiveRequests = self->_mutableActiveRequests;
  v5 = [(NSMutableArray *)mutableActiveRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(mutableActiveRequests);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([d isEqual:{objc_msgSend(v9, "uuid")}])
        {
          v5 = [v9 copy];
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)mutableActiveRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)__logMessage:(id)message timestamped:(BOOL)timestamped
{
  timestampedCopy = timestamped;
  if (self->_additionalLogURL)
  {
    fileHandle = self->_fileHandle;
  }

  else
  {
    v8 = -[NSURL copy](+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:[+[NSUUID UUID](NSUUID UUIDString]) stringByAppendingPathExtension:@"log"]], "copy");
    self->_additionalLogURL = v8;
    if (!v8)
    {
      return;
    }

    if (![+[NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:"]
    {
      return;
    }

    fileHandle = [NSFileHandle fileHandleForWritingAtPath:[(NSURL *)self->_additionalLogURL path]];
    self->_fileHandle = fileHandle;
    if (!fileHandle)
    {
      return;
    }
  }

  [(NSFileHandle *)fileHandle seekToEndOfFile];
  if (timestampedCopy)
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@\n", [(NSDateFormatter *)self->_formatter stringFromDate:+[NSDate date]], message);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%@\n", message, v10];
  }

  [(NSFileHandle *)self->_fileHandle writeData:[(NSString *)v9 dataUsingEncoding:4]];
}

- (void)startMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000859C4;
  block[3] = &unk_1000E1CC0;
  block[4] = events;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)stopMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085B74;
  block[3] = &unk_1000E1CC0;
  block[4] = events;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)queryLocalPeerAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085D20;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

- (void)queryStatusForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085DE0;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = peer;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085EA4;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = fetch;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085F68;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = path;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008602C;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = path;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)queryDebugConfigurationForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000860F0;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = peer;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000861B4;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = configuration;
  v6[6] = peer;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)runDiagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008627C;
  block[3] = &unk_1000E2220;
  block[4] = uuid;
  block[5] = configuration;
  block[6] = self;
  block[7] = diagnostics;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008650C;
  v8[3] = &unk_1000E21D0;
  v8[4] = uuid;
  v8[5] = configuration;
  v8[6] = self;
  v8[7] = peer;
  v8[8] = diagnostics;
  v8[9] = reply;
  dispatch_async(queue, v8);
}

- (void)registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086798;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = configuration;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008685C;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = configuration;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)queryRegisteredDiagnosticsPeersWithReply:(id)reply
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008691C;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

- (void)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000869DC;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = configuration;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086AA0;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = d;
  v6[6] = info;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086B64;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = info;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)collectLogs:(id)logs configuration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086C2C;
  block[3] = &unk_1000E2220;
  block[4] = uuid;
  block[5] = configuration;
  block[6] = self;
  block[7] = logs;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)collectLogsDiagnosticMode:(id)mode uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086EBC;
  v6[3] = &unk_1000E20B8;
  v6[4] = uuid;
  v6[5] = mode;
  v6[6] = self;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)startPeerDiscoveryWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008714C;
  v6[3] = &unk_1000E20B8;
  v6[4] = uuid;
  v6[5] = self;
  v6[6] = configuration;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)stopPeerDiscoveryWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087394;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100087458;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = configuration;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087520;
  block[3] = &unk_1000E2220;
  block[4] = self;
  block[5] = peer;
  block[6] = result;
  block[7] = configuration;
  block[8] = reply;
  dispatch_async(queue, block);
}

- (void)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000875F0;
  v8[3] = &unk_1000E32E0;
  v8[4] = uuid;
  v8[5] = peer;
  v8[6] = self;
  v8[7] = channels;
  *&v8[9] = duration;
  v8[8] = reply;
  dispatch_async(queue, v8);
}

- (void)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100087868;
  v8[3] = &unk_1000E32E0;
  v8[4] = uuid;
  v8[5] = peer;
  v8[6] = self;
  v8[7] = channels;
  *&v8[9] = duration;
  v8[8] = reply;
  dispatch_async(queue, v8);
}

- (void)runWiFiPerformanceLoggingWithConfiguration:(id)configuration uuid:(id)uuid reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100087AD0;
  v6[3] = &unk_1000E20B8;
  v6[4] = uuid;
  v6[5] = configuration;
  v6[6] = self;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

- (void)cancelRequestWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087D3C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)cancelAllRequestsAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100087F3C;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

- (void)cancelRequestWithUUID:(id)d OnPeer:(id)peer OfType:(int64_t)type reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000881A8;
  block[3] = &unk_1000E3330;
  block[7] = reply;
  block[8] = type;
  block[4] = self;
  block[5] = d;
  block[6] = peer;
  dispatch_async(queue, block);
}

- (void)log:(id)log timestamp:(BOOL)timestamp reply:(id)reply
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100088298;
  v6[3] = &unk_1000E3358;
  v6[4] = self;
  v6[5] = log;
  timestampCopy = timestamp;
  v6[6] = reply;
  dispatch_async(queue, v6);
}

- (void)startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088370;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = peer;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088498;
  block[3] = &unk_1000E1CC0;
  block[4] = peer;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)submitFaultEvent:(id)event reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088584;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = event;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)queryFaultEventCacheForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088648;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = peer;
  block[6] = reply;
  dispatch_async(queue, block);
}

@end