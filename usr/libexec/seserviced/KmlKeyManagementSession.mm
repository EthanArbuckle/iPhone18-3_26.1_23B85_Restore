@interface KmlKeyManagementSession
- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)handler;
- (void)cancelInvitationWithIdentifier:(id)identifier reason:(unint64_t)reason callback:(id)callback;
- (void)cancelInvitationsWithIdentifiers:(id)identifiers sentByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)consumeTrackingReceipt:(id)receipt otherJSONData:(id)data forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)countImmobilizerTokensForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)deleteKey:(id)key callback:(id)callback;
- (void)endSessionWithCompletion:(id)completion;
- (void)finalizeUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version revert:(BOOL)revert completionHandler:(id)handler;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler;
- (void)handleOwnerCrossPlatformInvitations:(id)invitations withError:(id)error;
- (void)handleOwnerKeySharingCancelStatus:(id)status;
- (void)handleOwnerKeySharingInvitations:(id)invitations withError:(id)error;
- (void)handleSharingCancelledMessage:(id)message;
- (void)handleUpgradeCompletionWithStatus:(id)status;
- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type versions:(id)versions completionHandler:(id)handler;
- (void)listReceivedSharingInvitationsWithCallback:(id)callback;
- (void)listSharingInvitationsForKeyIdentifier:(id)identifier callback:(id)callback;
- (void)localDeleteKey:(id)key callback:(id)callback;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)remoteTerminateKeys:(id)keys nodeGroupIdentifiers:(id)identifiers treeGroupIdentifiers:(id)groupIdentifiers adminKey:(id)key callback:(id)callback;
- (void)removeSharedKeysWithIdentifiers:(id)identifiers ownerKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)removeSharingInvitationWithId:(id)id completionHandler:(id)handler;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion;
- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier additionalConfigurationData:(id)data completionHandler:(id)handler;
- (void)upgradeKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completionHandler:(id)handler;
@end

@implementation KmlKeyManagementSession

- (void)deleteKey:(id)key callback:(id)callback
{
  keyCopy = key;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A3AD4;
  v11[3] = &unk_1004C0F00;
  v12 = keyCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = keyCopy;
  dispatch_async(v8, v11);
}

- (void)localDeleteKey:(id)key callback:(id)callback
{
  keyCopy = key;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A3CDC;
  v11[3] = &unk_1004C0F00;
  v12 = keyCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = keyCopy;
  dispatch_async(v8, v11);
}

- (void)remoteTerminateKeys:(id)keys nodeGroupIdentifiers:(id)identifiers treeGroupIdentifiers:(id)groupIdentifiers adminKey:(id)key callback:(id)callback
{
  keysCopy = keys;
  identifiersCopy = identifiers;
  groupIdentifiersCopy = groupIdentifiers;
  keyCopy = key;
  callbackCopy = callback;
  v17 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A3F40;
  block[3] = &unk_1004C09B8;
  v24 = keysCopy;
  v25 = identifiersCopy;
  v26 = groupIdentifiersCopy;
  v27 = keyCopy;
  v28 = callbackCopy;
  v18 = callbackCopy;
  v19 = keyCopy;
  v20 = groupIdentifiersCopy;
  v21 = identifiersCopy;
  v22 = keysCopy;
  dispatch_async(v17, block);
}

- (void)listSharingInvitationsForKeyIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A4360;
  v11[3] = &unk_1004C0F00;
  v12 = identifierCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = identifierCopy;
  dispatch_async(v8, v11);
}

- (void)listReceivedSharingInvitationsWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A4540;
  block[3] = &unk_1004C1188;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(v5, block);
}

- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A4708;
  block[3] = &unk_1004C1188;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);
}

- (void)removeSharingInvitationWithId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A48DC;
  v11[3] = &unk_1004C0F00;
  v12 = idCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = idCopy;
  dispatch_async(v8, v11);
}

- (void)cancelInvitationsWithIdentifiers:(id)identifiers sentByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = sub_1003CC87C(&self->super.super.isa);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A4AE0;
  v15[3] = &unk_1004C2548;
  v16 = identifierCopy;
  v17 = identifiersCopy;
  selfCopy = self;
  v19 = callbackCopy;
  v12 = callbackCopy;
  v13 = identifiersCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (void)cancelInvitationWithIdentifier:(id)identifier reason:(unint64_t)reason callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v10 = sub_1003CC87C(&self->super.super.isa);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003A4F94;
  v13[3] = &unk_1004D2490;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = callbackCopy;
  reasonCopy = reason;
  v11 = callbackCopy;
  v12 = identifierCopy;
  dispatch_async(v10, v13);
}

- (void)removeSharedKeysWithIdentifiers:(id)identifiers ownerKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A55D4;
  block[3] = &unk_1004C0F68;
  v16 = identifierCopy;
  v17 = identifiersCopy;
  v18 = callbackCopy;
  v12 = callbackCopy;
  v13 = identifiersCopy;
  v14 = identifierCopy;
  dispatch_async(v11, block);
}

- (void)countImmobilizerTokensForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A57C4;
  v11[3] = &unk_1004C0F00;
  v12 = identifierCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = identifierCopy;
  dispatch_async(v8, v11);
}

- (void)consumeTrackingReceipt:(id)receipt otherJSONData:(id)data forKeyWithIdentifier:(id)identifier callback:(id)callback
{
  receiptCopy = receipt;
  dataCopy = data;
  identifierCopy = identifier;
  callbackCopy = callback;
  v14 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A59F4;
  v19[3] = &unk_1004C09E0;
  v20 = dataCopy;
  v21 = identifierCopy;
  v22 = receiptCopy;
  v23 = callbackCopy;
  v15 = callbackCopy;
  v16 = receiptCopy;
  v17 = identifierCopy;
  v18 = dataCopy;
  dispatch_async(v14, v19);
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A5C98;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = identifierCopy;
  v13 = callbackCopy;
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
  v15[2] = sub_1003A5F18;
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
  block[2] = sub_1003A6158;
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
  block[2] = sub_1003A6430;
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
  v15[2] = sub_1003A672C;
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
  v15[2] = sub_1003A6AA8;
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
  v15[2] = sub_1003A6D8C;
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
  block[2] = sub_1003A70D0;
  block[3] = &unk_1004C0F68;
  v12 = configsCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = configsCopy;
  dispatch_async(v8, block);
}

- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type versions:(id)versions completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionsCopy = versions;
  handlerCopy = handler;
  v13 = sub_1003CC87C(&self->super.super.isa);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A7588;
  v17[3] = &unk_1004C27F8;
  v18 = identifierCopy;
  v19 = versionsCopy;
  v20 = handlerCopy;
  typeCopy = type;
  v14 = handlerCopy;
  v15 = versionsCopy;
  v16 = identifierCopy;
  dispatch_async(v13, v17);
}

- (void)upgradeKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completionHandler:(id)handler
{
  identifierCopy = identifier;
  informationCopy = information;
  handlerCopy = handler;
  v15 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A77F0;
  v19[3] = &unk_1004D24B8;
  v19[4] = self;
  v20 = identifierCopy;
  typeCopy = type;
  versionCopy = version;
  v21 = informationCopy;
  v22 = handlerCopy;
  v16 = informationCopy;
  v17 = handlerCopy;
  v18 = identifierCopy;
  dispatch_async(v15, v19);
}

- (void)finalizeUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version revert:(BOOL)revert completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = sub_1003CC87C(&self->super.super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A7BB4;
  block[3] = &unk_1004D24E0;
  typeCopy = type;
  versionCopy = version;
  revertCopy = revert;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = identifierCopy;
  dispatch_async(v14, block);
}

- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier additionalConfigurationData:(id)data completionHandler:(id)handler
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  dataCopy = data;
  handlerCopy = handler;
  v14 = sub_1003CC87C(&self->super.super.isa);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003A7DE4;
  v19[3] = &unk_1004C09E0;
  v20 = identifierCopy;
  v21 = configurationCopy;
  v22 = dataCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = dataCopy;
  v17 = configurationCopy;
  v18 = identifierCopy;
  dispatch_async(v14, v19);
}

- (void)endSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_1003CC87C(&self->super.super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A7FA4;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)handleOwnerKeySharingCancelStatus:(id)status
{
  statusCopy = status;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[KmlKeyManagementSession handleOwnerKeySharingCancelStatus:]";
    v12 = 1024;
    v13 = 542;
    v14 = 2112;
    v15 = statusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v6 = sub_1003CC87C(&self->super.super.isa);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003A8148;
  v8[3] = &unk_1004C22F0;
  v8[4] = self;
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(v6, v8);
}

- (void)handleOwnerKeySharingInvitations:(id)invitations withError:(id)error
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

- (void)handleOwnerCrossPlatformInvitations:(id)invitations withError:(id)error
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

- (void)handleSharingCancelledMessage:(id)message
{
  messageCopy = message;
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
  v9 = messageCopy;
  v7 = messageCopy;
  dispatch_async(v6, v8);
}

- (void)handleUpgradeCompletionWithStatus:(id)status
{
  statusCopy = status;
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
  v9 = statusCopy;
  v7 = statusCopy;
  dispatch_async(v6, v8);
}

@end