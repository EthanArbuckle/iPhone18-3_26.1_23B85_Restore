@interface NRRemoteObjectClassA
- (NRRemoteObjectClassA)initWithDelegate:(id)delegate andQueue:(id)queue;
- (void)sendMigrationSetKeyRequestToBTUUID:(id)d withKey:(id)key withRevision:(int)revision withResponseBlock:(id)block;
@end

@implementation NRRemoteObjectClassA

- (NRRemoteObjectClassA)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectClassA;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistryclassa" isAlwaysConnected:1 andClientQueue:queue andDelegate:delegate];
}

- (void)sendMigrationSetKeyRequestToBTUUID:(id)d withKey:(id)key withRevision:(int)revision withResponseBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  dCopy = d;
  v13 = objc_opt_new();
  sub_100103D00(v13, keyCopy);
  sub_100103CD8(v13, revision);
  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sHA256Data = [keyCopy SHA256Data];
      v18 = [sHA256Data base64EncodedStringWithOptions:0];
      v19 = [v18 substringToIndex:6];
      *buf = 138412546;
      v27 = v19;
      v28 = 2048;
      revisionCopy = revision;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending migration key, digest %@, revision %lx", buf, 0x16u);
    }
  }

  v20 = [NSString stringWithFormat:@"Cloud migration set key request"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BEC70;
  v24[3] = &unk_100175C68;
  v25 = blockCopy;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BECD4;
  v22[3] = &unk_100177FB0;
  v23 = v25;
  v21 = v25;
  [(NRRemoteObject *)self sendRequest:v13 type:0 withTimeout:&off_100187878 withResponseTimeout:&off_100187878 withDescription:v20 onlyOneFor:@"migrationSetKey" priority:300 toIDSBTUUID:dCopy didSend:v24 andResponse:v22];
}

@end