@interface KmlOwnerSharingSession
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4;
- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10;
- (void)handleSendMessageResult:(id)a3;
- (void)handleTransportSetupResult:(id)a3;
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

- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  sessionQueue = self->_sessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100366A10;
  block[3] = &unk_1004D1A90;
  block[4] = self;
  v27 = v15;
  v31 = v16;
  v32 = a8;
  v28 = v18;
  v29 = v19;
  v30 = v17;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  v24 = v18;
  v25 = v15;
  dispatch_async(sessionQueue, block);
}

- (void)handleTransportSetupResult:(id)a3
{
  v4 = a3;
  sessionQueue = self->_sessionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100366AC0;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sessionQueue, v7);
}

- (void)handleSendMessageResult:(id)a3
{
  v4 = a3;
  sessionQueue = self->_sessionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100366C34;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sessionQueue, v7);
}

- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  sessionQueue = self->_sessionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100367590;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sessionQueue, block);
}

@end