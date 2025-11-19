@interface KmlKeyManagementSession
- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)a3;
- (void)cancelInvitationWithIdentifier:(id)a3 reason:(unint64_t)a4 callback:(id)a5;
- (void)cancelInvitationsWithIdentifiers:(id)a3 sentByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)consumeTrackingReceipt:(id)a3 otherJSONData:(id)a4 forKeyWithIdentifier:(id)a5 callback:(id)a6;
- (void)countImmobilizerTokensForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)deleteKey:(id)a3 callback:(id)a4;
- (void)endSessionWithCompletion:(id)a3;
- (void)finalizeUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 revert:(BOOL)a6 completionHandler:(id)a7;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)getSecondFactorRequestForConfigs:(id)a3 completionHandler:(id)a4;
- (void)handleOwnerCrossPlatformInvitations:(id)a3 withError:(id)a4;
- (void)handleOwnerKeySharingCancelStatus:(id)a3;
- (void)handleOwnerKeySharingInvitations:(id)a3 withError:(id)a4;
- (void)handleSharingCancelledMessage:(id)a3;
- (void)handleUpgradeCompletionWithStatus:(id)a3;
- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completionHandler:(id)a6;
- (void)listReceivedSharingInvitationsWithCallback:(id)a3;
- (void)listSharingInvitationsForKeyIdentifier:(id)a3 callback:(id)a4;
- (void)localDeleteKey:(id)a3 callback:(id)a4;
- (void)ppidRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)readerInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)remoteTerminateKeys:(id)a3 nodeGroupIdentifiers:(id)a4 treeGroupIdentifiers:(id)a5 adminKey:(id)a6 callback:(id)a7;
- (void)removeSharedKeysWithIdentifiers:(id)a3 ownerKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)removeSharingInvitationWithId:(id)a3 completionHandler:(id)a4;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)setBindingAttestation:(id)a3 forKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)setProductPlanIdentifier:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 additionalConfigurationData:(id)a5 completionHandler:(id)a6;
- (void)upgradeKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completionHandler:(id)a7;
@end

@implementation KmlKeyManagementSession

- (void)deleteKey:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A3AD4;
  v11[3] = &unk_1004C0F00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)localDeleteKey:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A3CDC;
  v11[3] = &unk_1004C0F00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)remoteTerminateKeys:(id)a3 nodeGroupIdentifiers:(id)a4 treeGroupIdentifiers:(id)a5 adminKey:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A3F40;
  block[3] = &unk_1004C09B8;
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
  dispatch_async(v17, block);
}

- (void)listSharingInvitationsForKeyIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A4360;
  v11[3] = &unk_1004C0F00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)listReceivedSharingInvitationsWithCallback:(id)a3
{
  v4 = a3;
  v5 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A4540;
  block[3] = &unk_1004C1188;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A4708;
  block[3] = &unk_1004C1188;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)removeSharingInvitationWithId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A48DC;
  v11[3] = &unk_1004C0F00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)cancelInvitationsWithIdentifiers:(id)a3 sentByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A4AE0;
  v15[3] = &unk_1004C2548;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)cancelInvitationWithIdentifier:(id)a3 reason:(unint64_t)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_1003CC87C(&self->super.super.isa);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003A4F94;
  v13[3] = &unk_1004D2490;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)removeSharedKeysWithIdentifiers:(id)a3 ownerKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A55D4;
  block[3] = &unk_1004C0F68;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, block);
}

- (void)countImmobilizerTokensForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A57C4;
  v11[3] = &unk_1004C0F00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)consumeTrackingReceipt:(id)a3 otherJSONData:(id)a4 forKeyWithIdentifier:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A59F4;
  v19[3] = &unk_1004C09E0;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, v19);
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A5C98;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
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
  v15[2] = sub_1003A5F18;
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
  block[2] = sub_1003A6158;
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
  block[2] = sub_1003A6430;
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
  v15[2] = sub_1003A672C;
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
  v15[2] = sub_1003A6AA8;
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
  v15[2] = sub_1003A6D8C;
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
  block[2] = sub_1003A70D0;
  block[3] = &unk_1004C0F68;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_1003CC87C(&self->super.super.isa);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A7588;
  v17[3] = &unk_1004C27F8;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a4;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);
}

- (void)upgradeKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A77F0;
  v19[3] = &unk_1004D24B8;
  v19[4] = self;
  v20 = v12;
  v23 = a4;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)finalizeUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 revert:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A7BB4;
  block[3] = &unk_1004D24E0;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 additionalConfigurationData:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A7DE4;
  v19[3] = &unk_1004C09E0;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, v19);
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A7FA4;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleOwnerKeySharingCancelStatus:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeyManagementSession handleOwnerKeySharingCancelStatus:]";
    v12 = 1024;
    v13 = 542;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A8148;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleOwnerKeySharingInvitations:(id)a3 withError:(id)a4
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession handleOwnerKeySharingInvitations:withError:]";
    v7 = 1024;
    v8 = 550;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Not applicable, Ignore", &v5, 0x12u);
  }
}

- (void)handleOwnerCrossPlatformInvitations:(id)a3 withError:(id)a4
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlKeyManagementSession handleOwnerCrossPlatformInvitations:withError:]";
    v7 = 1024;
    v8 = 555;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Not applicable, Ignore", &v5, 0x12u);
  }
}

- (void)handleSharingCancelledMessage:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[KmlKeyManagementSession handleSharingCancelledMessage:]";
    v12 = 1024;
    v13 = 562;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A841C;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleUpgradeCompletionWithStatus:(id)a3
{
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[KmlKeyManagementSession handleUpgradeCompletionWithStatus:]";
    v12 = 1024;
    v13 = 573;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A8584;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

@end