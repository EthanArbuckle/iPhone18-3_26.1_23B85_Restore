@interface KmlFriendSharingManager
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier;
- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0;
- (void)handleSendMessageResult:(id)result;
- (void)handleTransportSetupResult:(id)result;
@end

@implementation KmlFriendSharingManager

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  ksTransport = self->_ksTransport;
  self->_ksTransport = 0;

  fsQueue = self->_fsQueue;
  self->_fsQueue = 0;

  v5.receiver = self;
  v5.super_class = KmlFriendSharingManager;
  [(KmlFriendSharingManager *)&v5 dealloc];
}

- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0
{
  messageCopy = message;
  dataCopy = data;
  identifierCopy = identifier;
  uuidCopy = uuid;
  idsIdentifierCopy = idsIdentifier;
  fsQueue = self->_fsQueue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10038EAF0;
  v26[3] = &unk_1004D2200;
  v27 = idsIdentifierCopy;
  selfCopy = self;
  v29 = messageCopy;
  v30 = dataCopy;
  typeCopy = type;
  deviceTypeCopy = deviceType;
  v31 = uuidCopy;
  v32 = identifierCopy;
  v21 = identifierCopy;
  v22 = uuidCopy;
  v23 = dataCopy;
  v24 = messageCopy;
  v25 = idsIdentifierCopy;
  dispatch_async(fsQueue, v26);
}

- (void)handleTransportSetupResult:(id)result
{
  resultCopy = result;
  fsQueue = self->_fsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10038F21C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(fsQueue, v7);
}

- (void)handleSendMessageResult:(id)result
{
  resultCopy = result;
  fsQueue = self->_fsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10038F3BC;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(fsQueue, v7);
}

- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier
{
  messageCopy = message;
  fsQueue = self->_fsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10038F5C4;
  v8[3] = &unk_1004C22F0;
  v9 = messageCopy;
  selfCopy = self;
  v7 = messageCopy;
  dispatch_async(fsQueue, v8);
}

@end