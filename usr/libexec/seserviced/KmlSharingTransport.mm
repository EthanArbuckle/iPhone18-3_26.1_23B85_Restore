@interface KmlSharingTransport
- (KmlSharingTransport)init;
- (void)dealloc;
- (void)handleConnectionSetupResult:(id)result;
- (void)handleIncomingMessage:(id)message fromRemoteIdsIdentifier:(id)identifier;
- (void)handleIncomingTestData:(id)data fromRemoteIdsIdentifier:(id)identifier;
- (void)handleSendMessageResult:(id)result forMessageIdentifier:(id)identifier;
@end

@implementation KmlSharingTransport

- (KmlSharingTransport)init
{
  v18.receiver = self;
  v18.super_class = KmlSharingTransport;
  v2 = [(KmlSharingTransport *)&v18 init];
  if (v2)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[KmlSharingTransport init]";
      v21 = 1024;
      v22 = 78;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: let's init", buf, 0x12u);
    }

    v5 = +[NSMutableDictionary dictionary];
    sharingIdToDelegateMap = v2->_sharingIdToDelegateMap;
    v2->_sharingIdToDelegateMap = v5;

    v7 = +[NSMutableSet set];
    checkConnectionClientSet = v2->_checkConnectionClientSet;
    v2->_checkConnectionClientSet = v7;

    v9 = sub_1003A86C0(KmlPeerToPeerConnection, v2);
    connection = v2->_connection;
    v2->_connection = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.sesd.kml.keyShareTransport", v11);
    keyTransportQueue = v2->_keyTransportQueue;
    v2->_keyTransportQueue = v12;

    v14 = sub_100388B10();
    sharingManager = v2->_sharingManager;
    v2->_sharingManager = v14;

    crossPlatformTestMessageHandler = v2->_crossPlatformTestMessageHandler;
    v2->_crossPlatformTestMessageHandler = 0;

    sub_1003CCD48(v2);
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[KmlSharingTransport init]";
      v21 = 1024;
      v22 = 87;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s : %i : KSTransport: ready to roll", buf, 0x12u);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_sharingIdToDelegateMap removeAllObjects];
  v3.receiver = self;
  v3.super_class = KmlSharingTransport;
  [(KmlSharingTransport *)&v3 dealloc];
}

- (void)handleConnectionSetupResult:(id)result
{
  resultCopy = result;
  keyTransportQueue = self->_keyTransportQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037EC70;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(keyTransportQueue, v7);
}

- (void)handleSendMessageResult:(id)result forMessageIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  keyTransportQueue = self->_keyTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037EE70;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = identifierCopy;
  dispatch_async(keyTransportQueue, block);
}

- (void)handleIncomingTestData:(id)data fromRemoteIdsIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  keyTransportQueue = self->_keyTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037EF90;
  block[3] = &unk_1004C24A8;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = identifierCopy;
  dispatch_async(keyTransportQueue, block);
}

- (void)handleIncomingMessage:(id)message fromRemoteIdsIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  keyTransportQueue = self->_keyTransportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037F1B0;
  block[3] = &unk_1004C24A8;
  v12 = identifierCopy;
  v13 = messageCopy;
  selfCopy = self;
  v9 = messageCopy;
  v10 = identifierCopy;
  dispatch_async(keyTransportQueue, block);
}

@end