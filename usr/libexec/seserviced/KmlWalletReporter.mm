@interface KmlWalletReporter
- (BOOL)didReceiveInvitationRequestWithUuid:(id)a3 ownerKeyIdentifier:(id)a4 friendKeyIdentifier:(id)a5 targetType:(int64_t)a6;
- (KmlWalletReporter)init;
- (void)dealloc;
- (void)didReceiveSharingInvitationWithIdentifier:(id)a3 uuid:(id)a4 metadata:(id)a5 ownerIdsId:(id)a6;
- (void)finishedSharingForKey:(id)a3 result:(id)a4;
- (void)passcodeRetryRequestedFor:(id)a3 retriesLeft:(unint64_t)a4;
- (void)reportUnusableInvitation:(id)a3 reason:(id)a4;
- (void)requestAuthorizationForSharingInvitationIdentifier:(id)a3;
- (void)sendCrossPlatformSharingMessage:(id)a3 toMailboxIdentifier:(id)a4;
- (void)sharingCompleteForInvitationIdentifier:(id)a3 friendKeyIdentifier:(id)a4 status:(id)a5;
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

- (void)didReceiveSharingInvitationWithIdentifier:(id)a3 uuid:(id)a4 metadata:(id)a5 ownerIdsId:(id)a6
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

- (void)finishedSharingForKey:(id)a3 result:(id)a4
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

- (void)reportUnusableInvitation:(id)a3 reason:(id)a4
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

- (void)requestAuthorizationForSharingInvitationIdentifier:(id)a3
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

- (void)sharingCompleteForInvitationIdentifier:(id)a3 friendKeyIdentifier:(id)a4 status:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  reporterQueue = self->_reporterQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036E88C;
  v15[3] = &unk_1004D1B40;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(reporterQueue, v15);
}

- (BOOL)didReceiveInvitationRequestWithUuid:(id)a3 ownerKeyIdentifier:(id)a4 friendKeyIdentifier:(id)a5 targetType:(int64_t)a6
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

- (void)sendCrossPlatformSharingMessage:(id)a3 toMailboxIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 genericData];
  v9 = [v8 asDictionary];

  v10 = +[NSMutableDictionary dictionary];
  v11 = [v7 additionalData];
  v12 = [v11 asDictionary];
  [v10 setObject:v12 forKeyedSubscript:@"carKey"];

  v13 = [v7 genericData];

  v14 = [v13 messageType];
  if ((v14 - 1) >= 7)
  {
    v14 = 0;
  }

  v15 = [[PKSharingGenericMessage alloc] initWithFormat:2 type:v14 genericSharingDict:v9 appleSharingDict:v10];
  dispatch_assert_queue_not_V2(self->_reporterQueue);
  reporterQueue = self->_reporterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036ECC8;
  block[3] = &unk_1004C24A8;
  block[4] = self;
  v20 = v6;
  v21 = v15;
  v17 = v15;
  v18 = v6;
  dispatch_sync(reporterQueue, block);
}

- (void)passcodeRetryRequestedFor:(id)a3 retriesLeft:(unint64_t)a4
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