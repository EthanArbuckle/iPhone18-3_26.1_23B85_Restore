@interface CRVideoSettingsRelay
+ (id)settingsRelayForSession:(id)a3;
- (BOOL)_channelQueue_sendMessage:(id)a3;
- (CRVideoSettingsRelay)initWithChannel:(id)a3;
- (void)_channelQueue_handleAnalyticsData:(id)a3;
- (void)_channelQueue_handleLicensesData:(id)a3;
- (void)channel:(id)a3 didReceiveMessage:(id)a4;
- (void)didCloseChannel:(id)a3;
- (void)didSendMessageForChannel:(id)a3;
- (void)fetchAnalyticsWithCompletion:(id)a3;
- (void)fetchLicensesTextWithCompletion:(id)a3;
- (void)invalidate;
- (void)sendDiagnosticsSetting:(BOOL)a3;
- (void)sendSubtitleSettings:(id)a3;
@end

@implementation CRVideoSettingsRelay

- (CRVideoSettingsRelay)initWithChannel:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CRVideoSettingsRelay;
  v6 = [(CRVideoSettingsRelay *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_channel, a3);
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v9 = dispatch_queue_create("com.apple.carkit.video_settings", v8);
  channelQueue = v7->_channelQueue;
  v7->_channelQueue = v9;

  [v5 setChannelDelegate:v7];
  v11 = 0;
  if ([v5 openChannel])
  {
    v7->_channelIsOpen = 1;
    v12 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v12;

LABEL_4:
    v11 = v7;
  }

  return v11;
}

+ (id)settingsRelayForSession:(id)a3
{
  v3 = a3;
  v4 = [[CARSessionChannel alloc] initWithSession:v3 channelType:@"BB493F61-A6B8-4769-8D74-80C23A9F71C4"];

  v5 = [[CRVideoSettingsRelay alloc] initWithChannel:v4];

  return v5;
}

- (void)invalidate
{
  v3 = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004623C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)sendSubtitleSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionaryRepresentation];
  v6 = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000463F8;
  block[3] = &unk_1000DD6F0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)sendDiagnosticsSetting:(BOOL)a3
{
  v5 = [(CRVideoSettingsRelay *)self channelQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000465A0;
  v6[3] = &unk_1000DEC08;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (void)fetchAnalyticsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRVideoSettingsRelay *)self channelQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046798;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)fetchLicensesTextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRVideoSettingsRelay *)self channelQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046B50;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didSendMessageForChannel:(id)a3
{
  v3 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "sent video settings message", v4, 2u);
  }
}

- (void)channel:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [(CRVideoSettingsRelay *)self channelQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100046F74;
  v8[3] = &unk_1000DD580;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)didCloseChannel:(id)a3
{
  v4 = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000473AC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)_channelQueue_sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(v5);

  v12 = 0;
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000870A8(v4, &v12, v10);
    }

    goto LABEL_11;
  }

  if (![(CRVideoSettingsRelay *)self channelIsOpen])
  {
    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100087040();
    }

    goto LABEL_11;
  }

  v7 = [(CRVideoSettingsRelay *)self channel];
  v8 = [v7 sendChannelMessage:Data];

  if ((v8 & 1) == 0)
  {
    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100087074();
    }

LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (void)_channelQueue_handleAnalyticsData:(id)a3
{
  v9 = a3;
  v4 = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CRVideoSettingsRelay *)self analyticsCompletion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v9);
    [(CRVideoSettingsRelay *)self setAnalyticsCompletion:0];
  }

  v7 = [(CRVideoSettingsRelay *)self analyticsTimeout];
  v8 = v7;
  if (v7)
  {
    [v7 invalidate];
    [(CRVideoSettingsRelay *)self setAnalyticsTimeout:0];
  }
}

- (void)_channelQueue_handleLicensesData:(id)a3
{
  v9 = a3;
  v4 = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CRVideoSettingsRelay *)self licensesCompletion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v9);
    [(CRVideoSettingsRelay *)self setLicensesCompletion:0];
  }

  v7 = [(CRVideoSettingsRelay *)self licensesTimeout];
  v8 = v7;
  if (v7)
  {
    [v7 invalidate];
    [(CRVideoSettingsRelay *)self setLicensesTimeout:0];
  }
}

@end