@interface KmlKeySharingSession
- (void)acceptSharingInvitation:(id)invitation withIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler;
- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler;
- (void)authorizeSharingInvitationIdentifier:(id)identifier auth:(id)auth completionHandler:(id)handler;
- (void)cancelSharingInvitation:(id)invitation completionHandler:(id)handler;
- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth ourBindingAttestation:(id)attestation config:(id)config completionHandler:(id)handler;
- (void)createSilentSharingInvitationWithGroupIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler;
- (void)handleCrossPlatformParseInvitationStatus:(id)status;
- (void)handleCrossPlatformSigningRequest:(id)request status:(id)status keyInformation:(id)information;
- (void)handleExchangeStartedWithFriendKey:(id)key status:(id)status;
- (void)handleFriendSideKeySharingCancelResult:(id)result;
- (void)handleInitiatorMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleInitiatorMessageResult:(id)result;
- (void)handleOwnerCrossPlatformInvitations:(id)invitations withError:(id)error;
- (void)handleOwnerKeySharingCancelStatus:(id)status;
- (void)handleOwnerKeySharingInvitations:(id)invitations withError:(id)error;
- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleRecipientMessageResult:(id)result;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)requestInviteWithConfig:(id)config completionHandler:(id)handler;
- (void)retryPasscode:(id)passcode forInvitationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)retryPasscode:(id)passcode forKeyIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sendSharingInviteForKeyIdentifier:(id)identifier toIdsIdentifier:(id)idsIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler;
- (void)sendSilentSharingInviteForKeyIdentifier:(id)identifier config:(id)config groupIdentifier:(id)groupIdentifier completionHandler:(id)handler;
- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)setMailboxIdentifier:(id)identifier forOwnerKeyIdentifier:(id)keyIdentifier forInvitationIdentifier:(id)invitationIdentifier completionHandler:(id)handler;
- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion;
- (void)startShareAcceptanceFlowWithInvitation:(id)invitation completionHandler:(id)handler;
- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateSharingAnalyticsWithConfig:(id)config completionHandler:(id)handler;
@end

@implementation KmlKeySharingSession

- (void)sendSharingInviteForKeyIdentifier:(id)identifier toIdsIdentifier:(id)idsIdentifier auth:(id)auth config:(id)config completionHandler:(id)handler
{
  identifierCopy = identifier;
  idsIdentifierCopy = idsIdentifier;
  authCopy = auth;
  configCopy = config;
  handlerCopy = handler;
  v17 = sub_1003CC87C(&self->super.super.isa);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100382BE0;
  v23[3] = &unk_1004D2018;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = idsIdentifierCopy;
  v26 = authCopy;
  v27 = configCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = configCopy;
  v20 = authCopy;
  v21 = idsIdentifierCopy;
  v22 = identifierCopy;
  dispatch_async(v17, v23);
}

- (void)sendSilentSharingInviteForKeyIdentifier:(id)identifier config:(id)config groupIdentifier:(id)groupIdentifier completionHandler:(id)handler
{
  configCopy = config;
  groupIdentifierCopy = groupIdentifier;
  handlerCopy = handler;
  v12 = sub_1003CC87C(&self->super.super.isa);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100382EE0;
  v16[3] = &unk_1004C09E0;
  v16[4] = self;
  v17 = groupIdentifierCopy;
  v18 = configCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = configCopy;
  v15 = groupIdentifierCopy;
  dispatch_async(v12, v16);
}

- (void)authorizeSharingInvitationIdentifier:(id)identifier auth:(id)auth completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383184;
  block[3] = &unk_1004C1188;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)cancelSharingInvitation:(id)invitation completionHandler:(id)handler
{
  invitationCopy = invitation;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038332C;
  block[3] = &unk_1004C0F68;
  v12 = invitationCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = invitationCopy;
  dispatch_async(v8, block);
}

- (void)acceptSharingInvitationWithIdentifier:(id)identifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  passcodeCopy = passcode;
  planIdentifierCopy = planIdentifier;
  handlerCopy = handler;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003836FC;
  block[3] = &unk_1004D2040;
  v22 = planIdentifierCopy;
  v23 = handlerCopy;
  block[4] = self;
  v20 = identifierCopy;
  v21 = passcodeCopy;
  v15 = planIdentifierCopy;
  v16 = passcodeCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  dispatch_async(v14, block);
}

- (void)requestInviteWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003838FC;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = configCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configCopy;
  dispatch_async(v8, block);
}

- (void)createSharingInvitationsForKeyIdentifier:(id)identifier friendIdentifier:(id)friendIdentifier auth:(id)auth ourBindingAttestation:(id)attestation config:(id)config completionHandler:(id)handler
{
  identifierCopy = identifier;
  friendIdentifierCopy = friendIdentifier;
  authCopy = auth;
  attestationCopy = attestation;
  configCopy = config;
  handlerCopy = handler;
  v20 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383BA0;
  block[3] = &unk_1004D2068;
  block[4] = self;
  v28 = identifierCopy;
  v29 = friendIdentifierCopy;
  v30 = authCopy;
  v31 = attestationCopy;
  v32 = configCopy;
  v33 = handlerCopy;
  v21 = handlerCopy;
  v22 = configCopy;
  v23 = attestationCopy;
  v24 = authCopy;
  v25 = friendIdentifierCopy;
  v26 = identifierCopy;
  dispatch_async(v20, block);
}

- (void)createSilentSharingInvitationWithGroupIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383E78;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)setMailboxIdentifier:(id)identifier forOwnerKeyIdentifier:(id)keyIdentifier forInvitationIdentifier:(id)invitationIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  invitationIdentifierCopy = invitationIdentifier;
  handlerCopy = handler;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384288;
  block[3] = &unk_1004C09B8;
  v20 = invitationIdentifierCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = keyIdentifierCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = keyIdentifierCopy;
  v17 = identifierCopy;
  v18 = invitationIdentifierCopy;
  dispatch_async(v14, block);
}

- (void)acceptSharingInvitation:(id)invitation withIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier passcode:(id)passcode productPlanIdentifier:(id)planIdentifier completionHandler:(id)handler
{
  invitationCopy = invitation;
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  passcodeCopy = passcode;
  planIdentifierCopy = planIdentifier;
  handlerCopy = handler;
  v20 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384668;
  block[3] = &unk_1004D2090;
  v28 = identifierCopy;
  v29 = mailboxIdentifierCopy;
  v30 = invitationCopy;
  selfCopy = self;
  v33 = planIdentifierCopy;
  v34 = handlerCopy;
  v32 = passcodeCopy;
  v21 = planIdentifierCopy;
  v22 = passcodeCopy;
  v23 = handlerCopy;
  v24 = invitationCopy;
  v25 = mailboxIdentifierCopy;
  v26 = identifierCopy;
  dispatch_async(v20, block);
}

- (void)startShareAcceptanceFlowWithInvitation:(id)invitation fromMailboxIdentifier:(id)identifier completionHandler:(id)handler
{
  invitationCopy = invitation;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100384A94;
  v15[3] = &unk_1004C2548;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = invitationCopy;
  v19 = handlerCopy;
  v12 = invitationCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)startShareAcceptanceFlowWithInvitation:(id)invitation completionHandler:(id)handler
{
  invitationCopy = invitation;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384CA8;
  block[3] = &unk_1004C0F68;
  v12 = invitationCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = invitationCopy;
  dispatch_async(v8, block);
}

- (void)handleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100384F2C;
  v15[3] = &unk_1004C2548;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = messageCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)handleInitiatorMessage:(id)message forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100385264;
  v15[3] = &unk_1004C2548;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = messageCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385570;
  block[3] = &unk_1004C0F68;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = callbackCopy;
  v9 = callbackCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback
{
  attestationCopy = attestation;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038586C;
  v15[3] = &unk_1004C09E0;
  v16 = identifierCopy;
  selfCopy = self;
  v18 = attestationCopy;
  v19 = callbackCopy;
  v12 = callbackCopy;
  v13 = attestationCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385B24;
  block[3] = &unk_1004C0F68;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385DFC;
  block[3] = &unk_1004C0F68;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = callbackCopy;
  v9 = callbackCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003860F8;
  v15[3] = &unk_1004C09E0;
  v16 = identifierCopy;
  v17 = mailboxIdentifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = mailboxIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  invitationIdentifierCopy = invitationIdentifier;
  completionCopy = completion;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386474;
  v15[3] = &unk_1004C09E0;
  v16 = invitationIdentifierCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = invitationIdentifierCopy;
  dispatch_async(v11, v15);
}

- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386758;
  v15[3] = &unk_1004C09E0;
  v16 = identifierCopy;
  v17 = mailboxIdentifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = mailboxIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler
{
  configsCopy = configs;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100386A9C;
  block[3] = &unk_1004C0F68;
  v12 = configsCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = configsCopy;
  dispatch_async(v8, block);
}

- (void)retryPasscode:(id)passcode forInvitationIdentifier:(id)identifier completionHandler:(id)handler
{
  passcodeCopy = passcode;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386F50;
  v15[3] = &unk_1004C09E0;
  v16 = passcodeCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = passcodeCopy;
  dispatch_async(v11, v15);
}

- (void)retryPasscode:(id)passcode forKeyIdentifier:(id)identifier completionHandler:(id)handler
{
  passcodeCopy = passcode;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100387294;
  v15[3] = &unk_1004C09E0;
  v16 = passcodeCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = passcodeCopy;
  dispatch_async(v11, v15);
}

- (void)updateSharingAnalyticsWithConfig:(id)config completionHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038755C;
  block[3] = &unk_1004C0F68;
  v12 = configCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = configCopy;
  dispatch_async(v8, block);
}

- (void)handleOwnerKeySharingCancelStatus:(id)status
{
  statusCopy = status;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[KmlKeySharingSession handleOwnerKeySharingCancelStatus:]";
    v8 = 1024;
    v9 = 587;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s : %i : We don't cancel invitation on owner side from sharing session", &v6, 0x12u);
  }

  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[KmlKeySharingSession handleOwnerKeySharingCancelStatus:]";
    v8 = 1024;
    v9 = 588;
    v10 = 2112;
    v11 = statusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Ignoring this callback with status : %@", &v6, 0x1Cu);
  }
}

- (void)handleOwnerKeySharingInvitations:(id)invitations withError:(id)error
{
  invitationsCopy = invitations;
  errorCopy = error;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "[KmlKeySharingSession handleOwnerKeySharingInvitations:withError:]";
    v17 = 1024;
    v18 = 593;
    v19 = 2112;
    v20 = invitationsCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitations: %@, error %@", buf, 0x26u);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100387DFC;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = invitationsCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = invitationsCopy;
  dispatch_async(v9, block);
}

- (void)handleOwnerCrossPlatformInvitations:(id)invitations withError:(id)error
{
  invitationsCopy = invitations;
  errorCopy = error;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[KmlKeySharingSession handleOwnerCrossPlatformInvitations:withError:]";
    v17 = 1024;
    v18 = 612;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : error - %@", buf, 0x1Cu);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100388064;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = invitationsCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = invitationsCopy;
  dispatch_async(v9, block);
}

- (void)handleExchangeStartedWithFriendKey:(id)key status:(id)status
{
  keyCopy = key;
  statusCopy = status;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[KmlKeySharingSession handleExchangeStartedWithFriendKey:status:]";
    v17 = 1024;
    v18 = 625;
    v19 = 2112;
    v20 = statusCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100388208;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = keyCopy;
  v14 = statusCopy;
  v10 = statusCopy;
  v11 = keyCopy;
  dispatch_async(v9, block);
}

- (void)handleFriendSideKeySharingCancelResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleFriendSideKeySharingCancelResult:]";
    v12 = 1024;
    v13 = 635;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100388388;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleCrossPlatformSigningRequest:(id)request status:(id)status keyInformation:(id)information
{
  requestCopy = request;
  statusCopy = status;
  informationCopy = information;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "[KmlKeySharingSession handleCrossPlatformSigningRequest:status:keyInformation:]";
    v22 = 1024;
    v23 = 645;
    v24 = 2112;
    v25 = statusCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v12 = sub_1003CC87C(&self->super.super.isa);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100388544;
  v16[3] = &unk_1004D1B40;
  v16[4] = self;
  v17 = requestCopy;
  v18 = informationCopy;
  v19 = statusCopy;
  v13 = statusCopy;
  v14 = informationCopy;
  v15 = requestCopy;
  dispatch_async(v12, v16);
}

- (void)handleCrossPlatformParseInvitationStatus:(id)status
{
  statusCopy = status;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleCrossPlatformParseInvitationStatus:]";
    v12 = 1024;
    v13 = 655;
    v14 = 2112;
    v15 = statusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003886C8;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(v6, v8);
}

- (void)handleRecipientMessageResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleRecipientMessageResult:]";
    v12 = 1024;
    v13 = 665;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100388848;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)handleInitiatorMessageResult:(id)result
{
  resultCopy = result;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleInitiatorMessageResult:]";
    v12 = 1024;
    v13 = 677;
    v14 = 2112;
    v15 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003889C8;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

@end