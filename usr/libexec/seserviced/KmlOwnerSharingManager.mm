@interface KmlOwnerSharingManager
- (void)dealloc;
- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier;
- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0;
- (void)handleOwnerKeySharingCancelledWithStatus:(id)status;
- (void)handlePasscodeRetryRequestedForInvitation:(id)invitation;
- (void)handleSendMessageResult:(id)result;
- (void)handleSentInvitationWithIdentifier:(id)identifier;
- (void)handleSharingCompleteForInvitationIdentifier:(id)identifier localShare:(BOOL)share bindingAttestationUsed:(BOOL)used status:(id)status;
- (void)handleTransportSetupResult:(id)result;
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

- (void)handleSentInvitationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    oksQueue = self->_oksQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A0F54;
    v8[3] = &unk_1004C22F0;
    v8[4] = self;
    v9 = identifierCopy;
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

- (void)handlePasscodeRetryRequestedForInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = invitationCopy;
  if (invitationCopy)
  {
    oksQueue = self->_oksQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003A11B8;
    v8[3] = &unk_1004C22F0;
    v8[4] = self;
    v9 = invitationCopy;
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

- (void)handleOwnerKeySharingCancelledWithStatus:(id)status
{
  statusCopy = status;
  v5 = KmlLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (statusCopy)
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
  v10 = statusCopy;
  v8 = statusCopy;
  dispatch_async(oksQueue, v9);
}

- (void)handleSharingCompleteForInvitationIdentifier:(id)identifier localShare:(BOOL)share bindingAttestationUsed:(BOOL)used status:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  oksQueue = self->_oksQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A1594;
  v15[3] = &unk_1004D2440;
  v15[4] = self;
  v16 = identifierCopy;
  shareCopy = share;
  usedCopy = used;
  v17 = statusCopy;
  v13 = statusCopy;
  v14 = identifierCopy;
  dispatch_async(oksQueue, v15);
}

- (void)handleIncomingMessage:(id)message metaData:(id)data bindingAttestation:(id)attestation keyIdentifier:(id)identifier uuid:(id)uuid messageType:(int64_t)type targetDeviceType:(int64_t)deviceType remoteIdsIdentifier:(id)self0
{
  uuidCopy = uuid;
  idsIdentifierCopy = idsIdentifier;
  oksQueue = self->_oksQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A1684;
  block[3] = &unk_1004D2468;
  block[4] = self;
  v18 = idsIdentifierCopy;
  typeCopy = type;
  deviceTypeCopy = deviceType;
  v19 = uuidCopy;
  v15 = uuidCopy;
  v16 = idsIdentifierCopy;
  dispatch_async(oksQueue, block);
}

- (void)handleSendMessageResult:(id)result
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1003A3790(self);
  }
}

- (void)handleTransportSetupResult:(id)result
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_1003A3860(self);
  }
}

- (void)handleCrossPlatformSharingMessage:(id)message fromMailboxIdentifier:(id)identifier
{
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    sub_1003A3930(self);
  }
}

@end