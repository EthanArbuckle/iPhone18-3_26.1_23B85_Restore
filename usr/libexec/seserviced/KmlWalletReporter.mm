@interface KmlWalletReporter
- (BOOL)didReceiveInvitationRequestWithUuid:(id)uuid ownerKeyIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier targetType:(int64_t)type;
- (KmlWalletReporter)init;
- (void)dealloc;
- (void)didReceiveSharingInvitationWithIdentifier:(id)identifier uuid:(id)uuid metadata:(id)metadata ownerIdsId:(id)id;
- (void)finishedSharingForKey:(id)key result:(id)result;
- (void)passcodeRetryRequestedFor:(id)for retriesLeft:(unint64_t)left;
- (void)reportUnusableInvitation:(id)invitation reason:(id)reason;
- (void)requestAuthorizationForSharingInvitationIdentifier:(id)identifier;
- (void)sendCrossPlatformSharingMessage:(id)message toMailboxIdentifier:(id)identifier;
- (void)sharingCompleteForInvitationIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier status:(id)status;
@end

@implementation KmlWalletReporter

- (KmlWalletReporter)init
{
  v9.receiver = self;
  v9.super_class = KmlWalletReporter;
  v2 = [(KmlWalletReporter *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKPaymentService);
    service = v2->_service;
    v2->_service = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.sesd.kml.reporter", v5);
    reporterQueue = v2->_reporterQueue;
    v2->_reporterQueue = v6;
  }

  return v2;
}

- (void)dealloc
{
  service = self->_service;
  self->_service = 0;

  v4.receiver = self;
  v4.super_class = KmlWalletReporter;
  [(KmlWalletReporter *)&v4 dealloc];
}

- (void)didReceiveSharingInvitationWithIdentifier:(id)identifier uuid:(id)uuid metadata:(id)metadata ownerIdsId:(id)id
{
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[KmlWalletReporter didReceiveSharingInvitationWithIdentifier:uuid:metadata:ownerIdsId:]";
    v9 = 1024;
    v10 = 51;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Deprecated with IDS Sharing", &v7, 0x12u);
  }
}

- (void)finishedSharingForKey:(id)key result:(id)result
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlWalletReporter finishedSharingForKey:result:]";
    v7 = 1024;
    v8 = 57;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Deprecated with IDS Sharing", &v5, 0x12u);
  }
}

- (void)reportUnusableInvitation:(id)invitation reason:(id)reason
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlWalletReporter reportUnusableInvitation:reason:]";
    v7 = 1024;
    v8 = 63;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Deprecated with IDS Sharing", &v5, 0x12u);
  }
}

- (void)requestAuthorizationForSharingInvitationIdentifier:(id)identifier
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlWalletReporter requestAuthorizationForSharingInvitationIdentifier:]";
    v6 = 1024;
    v7 = 68;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : Not implemented", &v4, 0x12u);
  }
}

- (void)sharingCompleteForInvitationIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier status:(id)status
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  statusCopy = status;
  reporterQueue = self->_reporterQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036E88C;
  v15[3] = &unk_1004D1B40;
  v16 = identifierCopy;
  v17 = keyIdentifierCopy;
  selfCopy = self;
  v19 = statusCopy;
  v12 = statusCopy;
  v13 = keyIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(reporterQueue, v15);
}

- (BOOL)didReceiveInvitationRequestWithUuid:(id)uuid ownerKeyIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier targetType:(int64_t)type
{
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[KmlWalletReporter didReceiveInvitationRequestWithUuid:ownerKeyIdentifier:friendKeyIdentifier:targetType:]";
    v10 = 1024;
    v11 = 84;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Deprecated with IDS Sharing", &v8, 0x12u);
  }

  return 0;
}

- (void)sendCrossPlatformSharingMessage:(id)message toMailboxIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageCopy = message;
  genericData = [messageCopy genericData];
  asDictionary = [genericData asDictionary];

  v10 = +[NSMutableDictionary dictionary];
  additionalData = [messageCopy additionalData];
  asDictionary2 = [additionalData asDictionary];
  [v10 setObject:asDictionary2 forKeyedSubscript:@"carKey"];

  genericData2 = [messageCopy genericData];

  messageType = [genericData2 messageType];
  if ((messageType - 1) >= 7)
  {
    messageType = 0;
  }

  v15 = [[PKSharingGenericMessage alloc] initWithFormat:2 type:messageType genericSharingDict:asDictionary appleSharingDict:v10];
  dispatch_assert_queue_not_V2(self->_reporterQueue);
  reporterQueue = self->_reporterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036ECC8;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v20 = identifierCopy;
  v21 = v15;
  v17 = v15;
  v18 = identifierCopy;
  dispatch_sync(reporterQueue, block);
}

- (void)passcodeRetryRequestedFor:(id)for retriesLeft:(unint64_t)left
{
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[KmlWalletReporter passcodeRetryRequestedFor:retriesLeft:]";
    v7 = 1024;
    v8 = 122;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Deprecated with IDS Sharing", &v5, 0x12u);
  }
}

@end