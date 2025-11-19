@interface SKRemoteAPFSFormatTask
- (BOOL)waitWithError:(id *)a3;
- (SKRemoteAPFSFormatTask)initWithName:(id)a3 disk:(id)a4 caseSensitive:(BOOL)a5 password:(id)a6;
- (void)sendStderr:(id)a3;
- (void)sendStdout:(id)a3;
@end

@implementation SKRemoteAPFSFormatTask

- (SKRemoteAPFSFormatTask)initWithName:(id)a3 disk:(id)a4 caseSensitive:(BOOL)a5 password:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SKRemoteAPFSFormatTask;
  v14 = [(SKRemoteAPFSFormatTask *)&v22 init];
  if (v14)
  {
    v15 = [SKProgress progressWithTotalUnitCount:100];
    progress = v14->_progress;
    v14->_progress = v15;

    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v14->_disk, a4);
    v14->_caseSensitive = a5;
    objc_storeStrong(&v14->_password, a6);
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

- (BOOL)waitWithError:(id *)a3
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
  v5 = [(SKRemoteAPFSFormatTask *)self connectionToService];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002459C;
  v16[3] = &unk_1000496B0;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v7 = [(SKRemoteAPFSFormatTask *)self name];
  v8 = [(SKRemoteAPFSFormatTask *)self disk];
  v9 = [v8 diskIdentifier];
  v10 = [(SKRemoteAPFSFormatTask *)self caseSensitive];
  v11 = [(SKRemoteAPFSFormatTask *)self password];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000245AC;
  v15[3] = &unk_1000496D8;
  v15[4] = &v23;
  v15[5] = &v17;
  [v6 formatAPFSWithName:v7 diskIdentifier:v9 caseSensitive:v10 password:v11 withReply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = 0;
    if (a3)
    {
      *a3 = v12;
    }
  }

  else
  {
    [(NSXPCConnection *)self->_connectionToService invalidate];
    if ([v24[5] integerValue])
    {
      v13 = +[SKError failWithPOSIXCode:error:](SKError, "failWithPOSIXCode:error:", [v24[5] integerValue], a3);
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

- (void)sendStdout:(id)a3
{
  v6 = a3;
  v4 = [(SKRemoteAPFSFormatTask *)self stdoutParser];

  if (v4)
  {
    v5 = [(SKRemoteAPFSFormatTask *)self stdoutParser];
    [v5 parseData:v6];
  }
}

- (void)sendStderr:(id)a3
{
  v6 = a3;
  v4 = [(SKRemoteAPFSFormatTask *)self stderrParser];

  if (v4)
  {
    v5 = [(SKRemoteAPFSFormatTask *)self stderrParser];
    [v5 parseData:v6];
  }
}

@end