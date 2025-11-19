@interface KmlOwnerSharingManager
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4;
- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10;
- (void)handleOwnerKeySharingCancelledWithStatus:(id)a3;
- (void)handlePasscodeRetryRequestedForInvitation:(id)a3;
- (void)handleSendMessageResult:(id)a3;
- (void)handleSentInvitationWithIdentifier:(id)a3;
- (void)handleSharingCompleteForInvitationIdentifier:(id)a3 localShare:(BOOL)a4 bindingAttestationUsed:(BOOL)a5 status:(id)a6;
- (void)handleTransportSetupResult:(id)a3;
@end

@implementation KmlOwnerSharingManager

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  oksQueue = self->_oksQueue;
  self->_oksQueue = 0;

  v4.receiver = self;
  v4.super_class = KmlOwnerSharingManager;
  [(KmlOwnerSharingManager *)&v4 dealloc];
}

- (void)handleSentInvitationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    oksQueue = self->_oksQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A0F54;
    v8[3] = &unk_1004C22F0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(oksQueue, v8);
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      sub_1003A2D38(self);
    }
  }
}

- (void)handlePasscodeRetryRequestedForInvitation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    oksQueue = self->_oksQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A11B8;
    v8[3] = &unk_1004C22F0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(oksQueue, v8);
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      sub_1003A2ED8(self);
    }
  }
}

- (void)handleOwnerKeySharingCancelledWithStatus:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      sub_1003A3144();
    }
  }

  else if (v6)
  {
    sub_1003A321C(self);
  }

  oksQueue = self->_oksQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A1464;
  v9[3] = &unk_1004C22F0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(oksQueue, v9);
}

- (void)handleSharingCompleteForInvitationIdentifier:(id)a3 localShare:(BOOL)a4 bindingAttestationUsed:(BOOL)a5 status:(id)a6
{
  v10 = a3;
  v11 = a6;
  oksQueue = self->_oksQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A1594;
  v15[3] = &unk_1004D2440;
  v15[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(oksQueue, v15);
}

- (void)handleIncomingMessage:(id)a3 metaData:(id)a4 bindingAttestation:(id)a5 keyIdentifier:(id)a6 uuid:(id)a7 messageType:(int64_t)a8 targetDeviceType:(int64_t)a9 remoteIdsIdentifier:(id)a10
{
  v12 = a7;
  v13 = a10;
  oksQueue = self->_oksQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A1684;
  block[3] = &unk_1004D2468;
  block[4] = self;
  v18 = v13;
  v20 = a8;
  v21 = a9;
  v19 = v12;
  v15 = v12;
  v16 = v13;
  dispatch_async(oksQueue, block);
}

- (void)handleSendMessageResult:(id)a3
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1003A3790(self);
  }
}

- (void)handleTransportSetupResult:(id)a3
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1003A3860(self);
  }
}

- (void)handleCrossPlatformSharingMessage:(id)a3 fromMailboxIdentifier:(id)a4
{
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    sub_1003A3930(self);
  }
}

@end