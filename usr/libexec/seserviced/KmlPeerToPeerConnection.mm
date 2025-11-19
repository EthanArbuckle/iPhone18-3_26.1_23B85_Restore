@interface KmlPeerToPeerConnection
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
@end

@implementation KmlPeerToPeerConnection

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  idsService = self->_idsService;
  self->_idsService = 0;

  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path"];
  v4.receiver = self;
  v4.super_class = KmlPeerToPeerConnection;
  [(KmlPeerToPeerConnection *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003A8AB4;
  v10[3] = &unk_1004C22F0;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(p2pConnectionQueue, v10);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A91B8;
  v17[3] = &unk_1004D1B40;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  v21 = self;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  dispatch_async(p2pConnectionQueue, v17);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A93C4;
  v17[3] = &unk_1004D1B40;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(p2pConnectionQueue, v17);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A963C;
  v15[3] = &unk_1004D1AD8;
  v19 = a6;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(p2pConnectionQueue, v15);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  p2pConnectionQueue = self->_p2pConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A9BB8;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(p2pConnectionQueue, block);
}

@end