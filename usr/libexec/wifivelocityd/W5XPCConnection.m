@interface W5XPCConnection
- (BOOL)isAdvertising;
- (BOOL)isBrowsing;
- (NSArray)activeRequests;
- (NSArray)eventIDs;
- (NSSet)faultEventMonitoringPeers;
- (NSURL)additionalLog;
- (W5XPCConnection)initWithXPCConnection:(id)a3;
- (id)__activeRequestWithUUID:(id)a3;
- (void)__logMessage:(id)a3 timestamped:(BOOL)a4;
- (void)associateToNetworkOnPeer:(id)a3 scanResult:(id)a4 configuration:(id)a5 reply:(id)a6;
- (void)cancelAllRequestsAndReply:(id)a3;
- (void)cancelRequestWithUUID:(id)a3 OnPeer:(id)a4 OfType:(int64_t)a5 reply:(id)a6;
- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4;
- (void)collectLogs:(id)a3 configuration:(id)a4 uuid:(id)a5 reply:(id)a6;
- (void)collectLogsDiagnosticMode:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)listFilesFromPeer:(id)a3 remoteDirPath:(id)a4 reply:(id)a5;
- (void)log:(id)a3 timestamp:(BOOL)a4 reply:(id)a5;
- (void)queryDatabaseForPeer:(id)a3 fetch:(id)a4 reply:(id)a5;
- (void)queryDebugConfigurationForPeer:(id)a3 reply:(id)a4;
- (void)queryDiagnosticsModeForPeer:(id)a3 info:(id)a4 reply:(id)a5;
- (void)queryFaultEventCacheForPeer:(id)a3 reply:(id)a4;
- (void)queryLocalPeerAndReply:(id)a3;
- (void)queryRegisteredDiagnosticsPeersWithReply:(id)a3;
- (void)queryStatusForPeer:(id)a3 reply:(id)a4;
- (void)registerRemoteDiagnosticEventsForPeer:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)requestFileFromPeer:(id)a3 remoteFilePath:(id)a4 reply:(id)a5;
- (void)runDiagnostics:(id)a3 configuration:(id)a4 uuid:(id)a5 reply:(id)a6;
- (void)runDiagnosticsForPeer:(id)a3 diagnostics:(id)a4 configuration:(id)a5 uuid:(id)a6 reply:(id)a7;
- (void)runWiFiPerformanceLoggingWithConfiguration:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)runWiFiSnifferOnChannels:(id)a3 duration:(double)a4 peer:(id)a5 uuid:(id)a6 reply:(id)a7;
- (void)runWiFiSnifferWithTCPDumpOnChannels:(id)a3 duration:(double)a4 peer:(id)a5 uuid:(id)a6 reply:(id)a7;
- (void)setDebugConfiguration:(id)a3 peer:(id)a4 reply:(id)a5;
- (void)startDiagnosticsModeWithConfiguration:(id)a3 reply:(id)a4;
- (void)startMonitoringEvents:(id)a3 reply:(id)a4;
- (void)startMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4;
- (void)startNetworkDiscoveryOnPeer:(id)a3 configuration:(id)a4 reply:(id)a5;
- (void)startPeerDiscoveryWithConfiguration:(id)a3 uuid:(id)a4 reply:(id)a5;
- (void)stopDiagnosticsModeWithUUID:(id)a3 info:(id)a4 reply:(id)a5;
- (void)stopMonitoringEvents:(id)a3 reply:(id)a4;
- (void)stopMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4;
- (void)stopPeerDiscoveryWithUUID:(id)a3 reply:(id)a4;
- (void)submitFaultEvent:(id)a3 reply:(id)a4;
- (void)unregisterRemoteDiagnosticEventsForPeer:(id)a3 configuration:(id)a4 reply:(id)a5;
@end

@implementation W5XPCConnection

- (W5XPCConnection)initWithXPCConnection:(id)a3
{
  v16.receiver = self;
  v16.super_class = W5XPCConnection;
  v4 = [(W5XPCConnection *)&v16 init];
  v5 = v4;
  if (!a3)
  {
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = a3;
  v5->_connection = v6;
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([(NSXPCConnection *)v6 processIdentifier], buffer, 0x1000u) < 1)
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

- (id)__activeRequestWithUUID:(id)a3
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
        if ([a3 isEqual:{objc_msgSend(v9, "uuid")}])
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

- (void)__logMessage:(id)a3 timestamped:(BOOL)a4
{
  v4 = a4;
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
  if (v4)
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@\n", [(NSDateFormatter *)self->_formatter stringFromDate:+[NSDate date]], a3);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%@\n", a3, v10];
  }

  [(NSFileHandle *)self->_fileHandle writeData:[(NSString *)v9 dataUsingEncoding:4]];
}

- (void)startMonitoringEvents:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000859C4;
  block[3] = &unk_1000E1CC0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)stopMonitoringEvents:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085B74;
  block[3] = &unk_1000E1CC0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)queryLocalPeerAndReply:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085D20;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)queryStatusForPeer:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085DE0;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)queryDatabaseForPeer:(id)a3 fetch:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085EA4;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)requestFileFromPeer:(id)a3 remoteFilePath:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100085F68;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)listFilesFromPeer:(id)a3 remoteDirPath:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008602C;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)queryDebugConfigurationForPeer:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000860F0;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)setDebugConfiguration:(id)a3 peer:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000861B4;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)runDiagnostics:(id)a3 configuration:(id)a4 uuid:(id)a5 reply:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008627C;
  block[3] = &unk_1000E2220;
  block[4] = a5;
  block[5] = a4;
  block[6] = self;
  block[7] = a3;
  block[8] = a6;
  dispatch_async(queue, block);
}

- (void)runDiagnosticsForPeer:(id)a3 diagnostics:(id)a4 configuration:(id)a5 uuid:(id)a6 reply:(id)a7
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008650C;
  v8[3] = &unk_1000E21D0;
  v8[4] = a6;
  v8[5] = a5;
  v8[6] = self;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a7;
  dispatch_async(queue, v8);
}

- (void)registerRemoteDiagnosticEventsForPeer:(id)a3 configuration:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086798;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)unregisterRemoteDiagnosticEventsForPeer:(id)a3 configuration:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008685C;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)queryRegisteredDiagnosticsPeersWithReply:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008691C;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)startDiagnosticsModeWithConfiguration:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000869DC;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)stopDiagnosticsModeWithUUID:(id)a3 info:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086AA0;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)queryDiagnosticsModeForPeer:(id)a3 info:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086B64;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)collectLogs:(id)a3 configuration:(id)a4 uuid:(id)a5 reply:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086C2C;
  block[3] = &unk_1000E2220;
  block[4] = a5;
  block[5] = a4;
  block[6] = self;
  block[7] = a3;
  block[8] = a6;
  dispatch_async(queue, block);
}

- (void)collectLogsDiagnosticMode:(id)a3 uuid:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100086EBC;
  v6[3] = &unk_1000E20B8;
  v6[4] = a4;
  v6[5] = a3;
  v6[6] = self;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)startPeerDiscoveryWithConfiguration:(id)a3 uuid:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008714C;
  v6[3] = &unk_1000E20B8;
  v6[4] = a4;
  v6[5] = self;
  v6[6] = a3;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)stopPeerDiscoveryWithUUID:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087394;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)startNetworkDiscoveryOnPeer:(id)a3 configuration:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100087458;
  v6[3] = &unk_1000E20B8;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)associateToNetworkOnPeer:(id)a3 scanResult:(id)a4 configuration:(id)a5 reply:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087520;
  block[3] = &unk_1000E2220;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  dispatch_async(queue, block);
}

- (void)runWiFiSnifferOnChannels:(id)a3 duration:(double)a4 peer:(id)a5 uuid:(id)a6 reply:(id)a7
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000875F0;
  v8[3] = &unk_1000E32E0;
  v8[4] = a6;
  v8[5] = a5;
  v8[6] = self;
  v8[7] = a3;
  *&v8[9] = a4;
  v8[8] = a7;
  dispatch_async(queue, v8);
}

- (void)runWiFiSnifferWithTCPDumpOnChannels:(id)a3 duration:(double)a4 peer:(id)a5 uuid:(id)a6 reply:(id)a7
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100087868;
  v8[3] = &unk_1000E32E0;
  v8[4] = a6;
  v8[5] = a5;
  v8[6] = self;
  v8[7] = a3;
  *&v8[9] = a4;
  v8[8] = a7;
  dispatch_async(queue, v8);
}

- (void)runWiFiPerformanceLoggingWithConfiguration:(id)a3 uuid:(id)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100087AD0;
  v6[3] = &unk_1000E20B8;
  v6[4] = a4;
  v6[5] = a3;
  v6[6] = self;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

- (void)cancelRequestWithUUID:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087D3C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)cancelAllRequestsAndReply:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100087F3C;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)cancelRequestWithUUID:(id)a3 OnPeer:(id)a4 OfType:(int64_t)a5 reply:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000881A8;
  block[3] = &unk_1000E3330;
  block[7] = a6;
  block[8] = a5;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)log:(id)a3 timestamp:(BOOL)a4 reply:(id)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100088298;
  v6[3] = &unk_1000E3358;
  v6[4] = self;
  v6[5] = a3;
  v7 = a4;
  v6[6] = a5;
  dispatch_async(queue, v6);
}

- (void)startMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088370;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)stopMonitoringFaultEventsForPeer:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088498;
  block[3] = &unk_1000E1CC0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)submitFaultEvent:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088584;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)queryFaultEventCacheForPeer:(id)a3 reply:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088648;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

@end