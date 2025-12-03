@interface NPHStateManager
+ (id)currentCallConfigurationWithSource:(id)source;
+ (void)updateSharedCallCenter;
- (NPHStateManager)initWithDelegate:(id)delegate;
- (NPHStateManagerDelegate)delegate;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)didChangeFaceTimeCallingAvailability;
- (void)handleStateChanged:(id)changed;
@end

@implementation NPHStateManager

- (NPHStateManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = NPHStateManager;
  v5 = [(NPHStateManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterCallerIDChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallShouldSuppressRingingChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterCallConnectedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallIsUplinkMutedChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallRemoteUplinkMutedChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallTTYTypeChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:@"NPHTUCallHasDisplayedDidChangeNotification" object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:@"NPHTUCallGFTWaitingStatusDidChangeNotification" object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterSupportsEmergencyFallbackChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterIsFailureExpectedChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallLocalSenderIdentityAccountUUIDChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallConversationChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallRemoteParticipantHandlesChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterIsEmergencyChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterIsScreeningChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterReceptionistSessionChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallCenterLastReceptionistMessageChangedNotification object:0];
    [v7 addObserver:v6 selector:"handleStateChanged:" name:TUCallSmartHoldingSessionChangedNotification object:0];
    v8 = +[TUCallCenter sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100004C98;
    v13[3] = &unk_1000145F8;
    v9 = v6;
    v14 = v9;
    [v8 registerWithCompletionHandler:v13];

    v10 = +[TUCallCenter sharedInstance];
    conversationManager = [v10 conversationManager];
    [conversationManager addDelegate:v9 queue:&_dispatch_main_q];

    [TUCallCapabilities addDelegate:v9 queue:&_dispatch_main_q];
  }

  return v6;
}

- (void)dealloc
{
  [TUCallCapabilities removeDelegate:self];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NPHStateManager;
  [(NPHStateManager *)&v4 dealloc];
}

+ (id)currentCallConfigurationWithSource:(id)source
{
  sourceCopy = source;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [NPHCallConfiguration alloc];
  currentAudioAndVideoCalls = [v4 currentAudioAndVideoCalls];
  v7 = currentAudioAndVideoCalls;
  if (currentAudioAndVideoCalls)
  {
    v8 = currentAudioAndVideoCalls;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = [NPHCall callsFromTUCalls:v8];
  callsOnDefaultPairedDevice = [v4 callsOnDefaultPairedDevice];
  v11 = callsOnDefaultPairedDevice;
  if (callsOnDefaultPairedDevice)
  {
    v12 = callsOnDefaultPairedDevice;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v13 = [NPHCall callsFromTUCalls:v12];
  v14 = [(NPHCallConfiguration *)v5 initWithCalls:v9 andCallsOnDefaultPairedDevice:v13 source:sourceCopy];

  return v14;
}

+ (void)updateSharedCallCenter
{
  if (qword_10001A9D0[0] != -1)
  {
    sub_100009A74();
  }

  v2 = sub_100001C24();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[NPHStateManager updateSharedCallCenter]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: refreshing on foregrounding", &v5, 0xCu);
  }

  v3 = +[TUCallCenter sharedInstance];
  [v3 fetchCurrentCalls];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:TUCallCenterCallStatusChangedNotification object:0];
}

- (void)handleStateChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  nph_ensure_on_main_queue();
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  conversation = [NSString stringWithUTF8String:"[NPHStateManager conversationManager:activeRemoteParticipantsChangedForConversation:]", conversation];
  [(NPHStateManager *)self handleStateChanged:conversation];
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  conversation = [NSString stringWithUTF8String:"[NPHStateManager conversationManager:remoteMembersChangedForConversation:]", conversation];
  [(NPHStateManager *)self handleStateChanged:conversation];
}

- (void)didChangeFaceTimeCallingAvailability
{
  v3 = [NSString stringWithFormat:@"%s", "[NPHStateManager didChangeFaceTimeCallingAvailability]"];
  [(NPHStateManager *)self handleStateChanged:v3];
}

- (NPHStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end