@interface CRVideoSettingsRelay
+ (id)settingsRelayForSession:(id)session;
- (BOOL)_channelQueue_sendMessage:(id)message;
- (CRVideoSettingsRelay)initWithChannel:(id)channel;
- (void)_channelQueue_handleAnalyticsData:(id)data;
- (void)_channelQueue_handleLicensesData:(id)data;
- (void)channel:(id)channel didReceiveMessage:(id)message;
- (void)didCloseChannel:(id)channel;
- (void)didSendMessageForChannel:(id)channel;
- (void)fetchAnalyticsWithCompletion:(id)completion;
- (void)fetchLicensesTextWithCompletion:(id)completion;
- (void)invalidate;
- (void)sendDiagnosticsSetting:(BOOL)setting;
- (void)sendSubtitleSettings:(id)settings;
@end

@implementation CRVideoSettingsRelay

- (CRVideoSettingsRelay)initWithChannel:(id)channel
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = CRVideoSettingsRelay;
  v6 = [(CRVideoSettingsRelay *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_channel, channel);
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v9 = dispatch_queue_create("com.apple.carkit.video_settings", v8);
  channelQueue = v7->_channelQueue;
  v7->_channelQueue = v9;

  [channelCopy setChannelDelegate:v7];
  v11 = 0;
  if ([channelCopy openChannel])
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

+ (id)settingsRelayForSession:(id)session
{
  sessionCopy = session;
  v4 = [[CARSessionChannel alloc] initWithSession:sessionCopy channelType:@"BB493F61-A6B8-4769-8D74-80C23A9F71C4"];

  v5 = [[CRVideoSettingsRelay alloc] initWithChannel:v4];

  return v5;
}

- (void)invalidate
{
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004623C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_sync(channelQueue, block);
}

- (void)sendSubtitleSettings:(id)settings
{
  settingsCopy = settings;
  dictionaryRepresentation = [settingsCopy dictionaryRepresentation];
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000463F8;
  block[3] = &unk_1000DD6F0;
  v10 = dictionaryRepresentation;
  selfCopy = self;
  v12 = settingsCopy;
  v7 = settingsCopy;
  v8 = dictionaryRepresentation;
  dispatch_async(channelQueue, block);
}

- (void)sendDiagnosticsSetting:(BOOL)setting
{
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000465A0;
  v6[3] = &unk_1000DEC08;
  settingCopy = setting;
  v6[4] = self;
  dispatch_async(channelQueue, v6);
}

- (void)fetchAnalyticsWithCompletion:(id)completion
{
  completionCopy = completion;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046798;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(channelQueue, v7);
}

- (void)fetchLicensesTextWithCompletion:(id)completion
{
  completionCopy = completion;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100046B50;
  v7[3] = &unk_1000DD988;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(channelQueue, v7);
}

- (void)didSendMessageForChannel:(id)channel
{
  v3 = sub_100002A68(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "sent video settings message", v4, 2u);
  }
}

- (void)channel:(id)channel didReceiveMessage:(id)message
{
  messageCopy = message;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100046F74;
  v8[3] = &unk_1000DD580;
  v9 = messageCopy;
  selfCopy = self;
  v7 = messageCopy;
  dispatch_async(channelQueue, v8);
}

- (void)didCloseChannel:(id)channel
{
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000473AC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(channelQueue, block);
}

- (BOOL)_channelQueue_sendMessage:(id)message
{
  messageCopy = message;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(channelQueue);

  v12 = 0;
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v10 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000870A8(messageCopy, &v12, v10);
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

  channel = [(CRVideoSettingsRelay *)self channel];
  v8 = [channel sendChannelMessage:Data];

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

- (void)_channelQueue_handleAnalyticsData:(id)data
{
  dataCopy = data;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(channelQueue);

  analyticsCompletion = [(CRVideoSettingsRelay *)self analyticsCompletion];
  v6 = analyticsCompletion;
  if (analyticsCompletion)
  {
    (*(analyticsCompletion + 16))(analyticsCompletion, dataCopy);
    [(CRVideoSettingsRelay *)self setAnalyticsCompletion:0];
  }

  analyticsTimeout = [(CRVideoSettingsRelay *)self analyticsTimeout];
  v8 = analyticsTimeout;
  if (analyticsTimeout)
  {
    [analyticsTimeout invalidate];
    [(CRVideoSettingsRelay *)self setAnalyticsTimeout:0];
  }
}

- (void)_channelQueue_handleLicensesData:(id)data
{
  dataCopy = data;
  channelQueue = [(CRVideoSettingsRelay *)self channelQueue];
  dispatch_assert_queue_V2(channelQueue);

  licensesCompletion = [(CRVideoSettingsRelay *)self licensesCompletion];
  v6 = licensesCompletion;
  if (licensesCompletion)
  {
    (*(licensesCompletion + 16))(licensesCompletion, dataCopy);
    [(CRVideoSettingsRelay *)self setLicensesCompletion:0];
  }

  licensesTimeout = [(CRVideoSettingsRelay *)self licensesTimeout];
  v8 = licensesTimeout;
  if (licensesTimeout)
  {
    [licensesTimeout invalidate];
    [(CRVideoSettingsRelay *)self setLicensesTimeout:0];
  }
}

@end