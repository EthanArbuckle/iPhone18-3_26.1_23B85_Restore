@interface KmlFriendSharingManager
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4;
- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10;
- (void)handleSendMessageResult:(id)a3;
- (void)handleTransportSetupResult:(id)a3;
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

- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  fsQueue = self->_fsQueue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10038EAF0;
  v26[3] = &unk_1004D2200;
  v27 = v19;
  v28 = self;
  v29 = v15;
  v30 = v16;
  v33 = a8;
  v34 = a9;
  v31 = v18;
  v32 = v17;
  v21 = v17;
  v22 = v18;
  v23 = v16;
  v24 = v15;
  v25 = v19;
  dispatch_async(fsQueue, v26);
}

- (void)handleTransportSetupResult:(id)a3
{
  v4 = a3;
  fsQueue = self->_fsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10038F21C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fsQueue, v7);
}

- (void)handleSendMessageResult:(id)a3
{
  v4 = a3;
  fsQueue = self->_fsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10038F3BC;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fsQueue, v7);
}

- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4
{
  v5 = a3;
  fsQueue = self->_fsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10038F5C4;
  v8[3] = &unk_1004C22F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(fsQueue, v8);
}

@end