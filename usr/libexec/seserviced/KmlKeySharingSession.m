@interface KmlKeySharingSession
- (void)acceptSharingInvitation:(id)a3 withIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 passcode:(id)a6 productPlanIdentifier:(id)a7 completionHandler:(id)a8;
- (void)acceptSharingInvitationWithIdentifier:(id)a3 passcode:(id)a4 productPlanIdentifier:(id)a5 completionHandler:(id)a6;
- (void)authorizeSharingInvitationIdentifier:(id)a3 auth:(id)a4 completionHandler:(id)a5;
- (void)cancelSharingInvitation:(id)a3 completionHandler:(id)a4;
- (void)createSharingInvitationsForKeyIdentifier:(id)a3 friendIdentifier:(id)a4 auth:(id)a5 ourBindingAttestation:(id)a6 config:(id)a7 completionHandler:(id)a8;
- (void)createSilentSharingInvitationWithGroupIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)getSecondFactorRequestForConfigs:(id)a3 completionHandler:(id)a4;
- (void)handleCrossPlatformParseInvitationStatus:(id)a3;
- (void)handleCrossPlatformSigningRequest:(id)a3 status:(id)a4 keyInformation:(id)a5;
- (void)handleExchangeStartedWithFriendKey:(id)a3 status:(id)a4;
- (void)handleFriendSideKeySharingCancelResult:(id)a3;
- (void)handleInitiatorMessage:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)handleInitiatorMessageResult:(id)a3;
- (void)handleOwnerCrossPlatformInvitations:(id)a3 withError:(id)a4;
- (void)handleOwnerKeySharingCancelStatus:(id)a3;
- (void)handleOwnerKeySharingInvitations:(id)a3 withError:(id)a4;
- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)handleRecipientMessageResult:(id)a3;
- (void)ppidRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)readerInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)requestInviteWithConfig:(id)a3 completionHandler:(id)a4;
- (void)retryPasscode:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)retryPasscode:(id)a3 forKeyIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendSharingInviteForKeyIdentifier:(id)a3 toIdsIdentifier:(id)a4 auth:(id)a5 config:(id)a6 completionHandler:(id)a7;
- (void)sendSilentSharingInviteForKeyIdentifier:(id)a3 config:(id)a4 groupIdentifier:(id)a5 completionHandler:(id)a6;
- (void)setBindingAttestation:(id)a3 forKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)setMailboxIdentifier:(id)a3 forOwnerKeyIdentifier:(id)a4 forInvitationIdentifier:(id)a5 completionHandler:(id)a6;
- (void)setProductPlanIdentifier:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)startShareAcceptanceFlowWithInvitation:(id)a3 completionHandler:(id)a4;
- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)updateSharingAnalyticsWithConfig:(id)a3 completionHandler:(id)a4;
@end

@implementation KmlKeySharingSession

- (void)sendSharingInviteForKeyIdentifier:(id)a3 toIdsIdentifier:(id)a4 auth:(id)a5 config:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_1003CC87C(&self->super.super.isa);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100382BE0;
  v23[3] = &unk_1004D2018;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

- (void)sendSilentSharingInviteForKeyIdentifier:(id)a3 config:(id)a4 groupIdentifier:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_1003CC87C(&self->super.super.isa);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100382EE0;
  v16[3] = &unk_1004C09E0;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)authorizeSharingInvitationIdentifier:(id)a3 auth:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383184;
  block[3] = &unk_1004C1188;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)cancelSharingInvitation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038332C;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)acceptSharingInvitationWithIdentifier:(id)a3 passcode:(id)a4 productPlanIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003836FC;
  block[3] = &unk_1004D2040;
  v22 = v12;
  v23 = v13;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)requestInviteWithConfig:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003838FC;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)createSharingInvitationsForKeyIdentifier:(id)a3 friendIdentifier:(id)a4 auth:(id)a5 ourBindingAttestation:(id)a6 config:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383BA0;
  block[3] = &unk_1004D2068;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(v20, block);
}

- (void)createSilentSharingInvitationWithGroupIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100383E78;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setMailboxIdentifier:(id)a3 forOwnerKeyIdentifier:(id)a4 forInvitationIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384288;
  block[3] = &unk_1004C09B8;
  v20 = v12;
  v21 = v10;
  v22 = self;
  v23 = v11;
  v24 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, block);
}

- (void)acceptSharingInvitation:(id)a3 withIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 passcode:(id)a6 productPlanIdentifier:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384668;
  block[3] = &unk_1004D2090;
  v28 = v15;
  v29 = v16;
  v30 = v14;
  v31 = self;
  v33 = v18;
  v34 = v19;
  v32 = v17;
  v21 = v18;
  v22 = v17;
  v23 = v19;
  v24 = v14;
  v25 = v16;
  v26 = v15;
  dispatch_async(v20, block);
}

- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100384A94;
  v15[3] = &unk_1004C2548;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)startShareAcceptanceFlowWithInvitation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100384CA8;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100384F2C;
  v15[3] = &unk_1004C2548;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)handleInitiatorMessage:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100385264;
  v15[3] = &unk_1004C2548;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385570;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setBindingAttestation:(id)a3 forKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038586C;
  v15[3] = &unk_1004C09E0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)getPreTrackRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385B24;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)getPreTrackRequestForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100385DFC;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)ppidRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003860F8;
  v15[3] = &unk_1004C09E0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)setProductPlanIdentifier:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386474;
  v15[3] = &unk_1004C09E0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)readerInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386758;
  v15[3] = &unk_1004C09E0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)getSecondFactorRequestForConfigs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100386A9C;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)retryPasscode:(id)a3 forInvitationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100386F50;
  v15[3] = &unk_1004C09E0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)retryPasscode:(id)a3 forKeyIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100387294;
  v15[3] = &unk_1004C09E0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)updateSharingAnalyticsWithConfig:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038755C;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleOwnerKeySharingCancelStatus:(id)a3
{
  v3 = a3;
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
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Ignoring this callback with status : %@", &v6, 0x1Cu);
  }
}

- (void)handleOwnerKeySharingInvitations:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "[KmlKeySharingSession handleOwnerKeySharingInvitations:withError:]";
    v17 = 1024;
    v18 = 593;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitations: %@, error %@", buf, 0x26u);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100387DFC;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)handleOwnerCrossPlatformInvitations:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[KmlKeySharingSession handleOwnerCrossPlatformInvitations:withError:]";
    v17 = 1024;
    v18 = 612;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : error - %@", buf, 0x1Cu);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100388064;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)handleExchangeStartedWithFriendKey:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[KmlKeySharingSession handleExchangeStartedWithFriendKey:status:]";
    v17 = 1024;
    v18 = 625;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v9 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100388208;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)handleFriendSideKeySharingCancelResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleFriendSideKeySharingCancelResult:]";
    v12 = 1024;
    v13 = 635;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100388388;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleCrossPlatformSigningRequest:(id)a3 status:(id)a4 keyInformation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "[KmlKeySharingSession handleCrossPlatformSigningRequest:status:keyInformation:]";
    v22 = 1024;
    v23 = 645;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v12 = sub_1003CC87C(&self->super.super.isa);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100388544;
  v16[3] = &unk_1004D1B40;
  v16[4] = self;
  v17 = v8;
  v18 = v10;
  v19 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  dispatch_async(v12, v16);
}

- (void)handleCrossPlatformParseInvitationStatus:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleCrossPlatformParseInvitationStatus:]";
    v12 = 1024;
    v13 = 655;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003886C8;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleRecipientMessageResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleRecipientMessageResult:]";
    v12 = 1024;
    v13 = 665;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100388848;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleInitiatorMessageResult:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeySharingSession handleInitiatorMessageResult:]";
    v12 = 1024;
    v13 = 677;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003889C8;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

@end