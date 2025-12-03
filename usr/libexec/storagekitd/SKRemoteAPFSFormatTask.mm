@interface SKRemoteAPFSFormatTask
- (BOOL)waitWithError:(id *)error;
- (SKRemoteAPFSFormatTask)initWithName:(id)name disk:(id)disk caseSensitive:(BOOL)sensitive password:(id)password;
- (void)sendStderr:(id)stderr;
- (void)sendStdout:(id)stdout;
@end

@implementation SKRemoteAPFSFormatTask

- (SKRemoteAPFSFormatTask)initWithName:(id)name disk:(id)disk caseSensitive:(BOOL)sensitive password:(id)password
{
  nameCopy = name;
  diskCopy = disk;
  passwordCopy = password;
  v22.receiver = self;
  v22.super_class = SKRemoteAPFSFormatTask;
  v14 = [(SKRemoteAPFSFormatTask *)&v22 init];
  if (v14)
  {
    v15 = [SKProgress progressWithTotalUnitCount:100];
    progress = v14->_progress;
    v14->_progress = v15;

    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v14->_disk, disk);
    v14->_caseSensitive = sensitive;
    objc_storeStrong(&v14->_password, password);
    v17 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.storagekitfsrunner" options:4096];
    connectionToService = v14->_connectionToService;
    v14->_connectionToService = v17;

    v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskRunnerProtocol];
    [(NSXPCConnection *)v14->_connectionToService setRemoteObjectInterface:v19];

    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskDataProtocol];
    [(NSXPCConnection *)v14->_connectionToService setExportedInterface:v20];

    [(NSXPCConnection *)v14->_connectionToService setExportedObject:v14];
    [(NSXPCConnection *)v14->_connectionToService setInterruptionHandler:&stru_100049668];
    [(NSXPCConnection *)v14->_connectionToService setInvalidationHandler:&stru_100049688];
    [(NSXPCConnection *)v14->_connectionToService resume];
  }

  return v14;
}

- (BOOL)waitWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100024584;
  v27 = sub_100024594;
  v28 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100024584;
  v21 = sub_100024594;
  v22 = 0;
  connectionToService = [(SKRemoteAPFSFormatTask *)self connectionToService];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002459C;
  v16[3] = &unk_1000496B0;
  v16[4] = &v17;
  v6 = [connectionToService synchronousRemoteObjectProxyWithErrorHandler:v16];

  name = [(SKRemoteAPFSFormatTask *)self name];
  disk = [(SKRemoteAPFSFormatTask *)self disk];
  diskIdentifier = [disk diskIdentifier];
  caseSensitive = [(SKRemoteAPFSFormatTask *)self caseSensitive];
  password = [(SKRemoteAPFSFormatTask *)self password];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000245AC;
  v15[3] = &unk_1000496D8;
  v15[4] = &v23;
  v15[5] = &v17;
  [v6 formatAPFSWithName:name diskIdentifier:diskIdentifier caseSensitive:caseSensitive password:password withReply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    [(NSXPCConnection *)self->_connectionToService invalidate];
    if ([v24[5] integerValue])
    {
      v13 = +[SKError failWithPOSIXCode:error:](SKError, "failWithPOSIXCode:error:", [v24[5] integerValue], error);
    }

    else
    {
      v13 = 1;
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

- (void)sendStdout:(id)stdout
{
  stdoutCopy = stdout;
  stdoutParser = [(SKRemoteAPFSFormatTask *)self stdoutParser];

  if (stdoutParser)
  {
    stdoutParser2 = [(SKRemoteAPFSFormatTask *)self stdoutParser];
    [stdoutParser2 parseData:stdoutCopy];
  }
}

- (void)sendStderr:(id)stderr
{
  stderrCopy = stderr;
  stderrParser = [(SKRemoteAPFSFormatTask *)self stderrParser];

  if (stderrParser)
  {
    stderrParser2 = [(SKRemoteAPFSFormatTask *)self stderrParser];
    [stderrParser2 parseData:stderrCopy];
  }
}

@end