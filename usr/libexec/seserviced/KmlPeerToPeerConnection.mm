@interface KmlPeerToPeerConnection
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003A8AB4;
  v10[3] = &unk_1004C22F0;
  v11 = pathCopy;
  selfCopy = self;
  v9 = pathCopy;
  dispatch_async(p2pConnectionQueue, v10);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A91B8;
  v17[3] = &unk_1004D1B40;
  v18 = dCopy;
  v19 = contextCopy;
  v20 = dataCopy;
  selfCopy = self;
  v14 = dataCopy;
  v15 = contextCopy;
  v16 = dCopy;
  dispatch_async(p2pConnectionQueue, v17);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A93C4;
  v17[3] = &unk_1004D1B40;
  v17[4] = self;
  v18 = dCopy;
  v19 = messageCopy;
  v20 = contextCopy;
  v14 = contextCopy;
  v15 = messageCopy;
  v16 = dCopy;
  dispatch_async(p2pConnectionQueue, v17);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  p2pConnectionQueue = self->_p2pConnectionQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A963C;
  v15[3] = &unk_1004D1AD8;
  successCopy = success;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = errorCopy;
  v13 = errorCopy;
  v14 = identifierCopy;
  dispatch_async(p2pConnectionQueue, v15);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
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