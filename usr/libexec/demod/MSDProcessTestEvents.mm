@interface MSDProcessTestEvents
+ (id)sharedInstance;
- (BOOL)establishConnection:(id)a3;
- (void)pushTestLog:(id)a3;
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

- (BOOL)establishConnection:(id)a3
{
  v4 = a3;
  NSLog(@"going to establish connection.\n");
  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.msdtest.service" options:4096];
  NSLog(@"established connection:%@", v5);
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSendTestCommand];
  [v5 setRemoteObjectInterface:v6];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDPushTestLog];
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  [v5 resume];
  NSLog(@"sending following commands to demod: %@", v4);
  v8 = [v5 remoteObjectProxy];
  [v8 sendCommandsToDemod:v4 replyFromDemod:&stru_10016B400];

  return 1;
}

- (void)pushTestLog:(id)a3
{
  v14 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/" stringByAppendingPathComponent:@"testLogs.plist"];
  [(MSDProcessTestEvents *)self setLogsToWrite:[(MSDProcessTestEvents *)self logsToWrite]+ 1];
  NSLog(@"testLog:%@", v14);
  if ([v4 fileExistsAtPath:@"/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/"])
  {
    v6 = [(MSDProcessTestEvents *)self logCache];

    if (!v6)
    {
      if (![v4 fileExistsAtPath:v5])
      {
        goto LABEL_5;
      }

      v7 = +[NSFileManager defaultManager];
      v8 = [v7 attributesOfItemAtPath:v5 error:0];
      v9 = [v8 fileSize];

      v10 = [NSMutableArray arrayWithContentsOfFile:v5];
      [(MSDProcessTestEvents *)self setLogCache:v10];

      if (v9 > 0xA00000)
      {
LABEL_5:
        v11 = objc_alloc_init(NSMutableArray);
        [(MSDProcessTestEvents *)self setLogCache:v11];
      }
    }

    v12 = [(MSDProcessTestEvents *)self logCache];
    [v12 addObject:v14];

    if ([(MSDProcessTestEvents *)self logsToWrite]== 10)
    {
      v13 = [(MSDProcessTestEvents *)self logCache];
      [v13 writeToFile:v5 atomically:1];

      [(MSDProcessTestEvents *)self setLogsToWrite:0];
    }
  }
}

@end