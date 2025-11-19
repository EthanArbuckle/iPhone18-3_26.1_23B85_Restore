@interface CHRemotePowerLoggingRequestHandler
- (void)handleRequest:(id)a3;
@end

@implementation CHRemotePowerLoggingRequestHandler

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100010AEC;
  v11[4] = sub_100010AFC;
  v12 = 0;
  v5 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010B04;
  block[3] = &unk_100024C00;
  v8 = v4;
  v9 = self;
  v10 = v11;
  v6 = v4;
  dispatch_async(v5, block);

  _Block_object_dispose(v11, 8);
}

@end