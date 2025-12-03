@interface MSDProcessTestEvents
+ (id)sharedInstance;
- (BOOL)establishConnection:(id)connection;
- (void)pushTestLog:(id)log;
@end

@implementation MSDProcessTestEvents

+ (id)sharedInstance
{
  if (qword_1001A5860 != -1)
  {
    sub_1000D7CAC();
  }

  v3 = qword_1001A5858;

  return v3;
}

- (BOOL)establishConnection:(id)connection
{
  connectionCopy = connection;
  NSLog(@"going to establish connection.\n");
  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.msdtest.service" options:4096];
  NSLog(@"established connection:%@", v5);
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSendTestCommand];
  [v5 setRemoteObjectInterface:v6];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDPushTestLog];
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  [v5 resume];
  NSLog(@"sending following commands to demod: %@", connectionCopy);
  remoteObjectProxy = [v5 remoteObjectProxy];
  [remoteObjectProxy sendCommandsToDemod:connectionCopy replyFromDemod:&stru_10016B400];

  return 1;
}

- (void)pushTestLog:(id)log
{
  logCopy = log;
  v4 = +[NSFileManager defaultManager];
  v5 = [@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/" stringByAppendingPathComponent:@"testLogs.plist"];
  [(MSDProcessTestEvents *)self setLogsToWrite:[(MSDProcessTestEvents *)self logsToWrite]+ 1];
  NSLog(@"testLog:%@", logCopy);
  if ([v4 fileExistsAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/"])
  {
    logCache = [(MSDProcessTestEvents *)self logCache];

    if (!logCache)
    {
      if (![v4 fileExistsAtPath:v5])
      {
        goto LABEL_5;
      }

      v7 = +[NSFileManager defaultManager];
      v8 = [v7 attributesOfItemAtPath:v5 error:0];
      fileSize = [v8 fileSize];

      v10 = [NSMutableArray arrayWithContentsOfFile:v5];
      [(MSDProcessTestEvents *)self setLogCache:v10];

      if (fileSize > 0xA00000)
      {
LABEL_5:
        v11 = objc_alloc_init(NSMutableArray);
        [(MSDProcessTestEvents *)self setLogCache:v11];
      }
    }

    logCache2 = [(MSDProcessTestEvents *)self logCache];
    [logCache2 addObject:logCopy];

    if ([(MSDProcessTestEvents *)self logsToWrite]== 10)
    {
      logCache3 = [(MSDProcessTestEvents *)self logCache];
      [logCache3 writeToFile:v5 atomically:1];

      [(MSDProcessTestEvents *)self setLogsToWrite:0];
    }
  }
}

@end