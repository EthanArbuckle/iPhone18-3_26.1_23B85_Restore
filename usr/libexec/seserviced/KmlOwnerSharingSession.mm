@interface KmlOwnerSharingSession
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier;
- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0;
- (void)handleSendMessageResult:(id)result;
- (void)handleTransportSetupResult:(id)result;
@end

@implementation KmlOwnerSharingSession

- (void)dealloc
{
  objc_storeWeak(&self->_sessionDelegate, 0);
  sessionQueue = self->_sessionQueue;
  self->_sessionQueue = 0;

  ksTransport = self->_ksTransport;
  self->_ksTransport = 0;

  objc_storeWeak(&self->_reporterDelegate, 0);
  v5.receiver = self;
  v5.super_class = KmlOwnerSharingSession;
  [(KmlOwnerSharingSession *)&v5 dealloc];
}

- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0
{
  messageCopy = message;
  attestationCopy = attestation;
  identifierCopy = identifier;
  uuidCopy = uuid;
  idsIdentifierCopy = idsIdentifier;
  sessionQueue = self->_sessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100366A10;
  block[3] = &unk_1004D1A90;
  block[4] = self;
  v27 = messageCopy;
  v31 = attestationCopy;
  typeCopy = type;
  v28 = uuidCopy;
  v29 = idsIdentifierCopy;
  v30 = identifierCopy;
  v21 = attestationCopy;
  v22 = identifierCopy;
  v23 = idsIdentifierCopy;
  v24 = uuidCopy;
  v25 = messageCopy;
  dispatch_async(sessionQueue, block);
}

- (void)handleTransportSetupResult:(id)result
{
  resultCopy = result;
  sessionQueue = self->_sessionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100366AC0;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(sessionQueue, v7);
}

- (void)handleSendMessageResult:(id)result
{
  resultCopy = result;
  sessionQueue = self->_sessionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100366C34;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(sessionQueue, v7);
}

- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  sessionQueue = self->_sessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100367590;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = messageCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = messageCopy;
  dispatch_async(sessionQueue, block);
}

@end