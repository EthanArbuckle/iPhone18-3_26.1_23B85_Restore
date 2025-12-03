@interface CMContinuityCaptureDServer
+ (id)sessionIdentifier:(id)identifier;
- (BOOL)activeCallSession;
- (BOOL)setupSidebandRPClient;
- (CMContinuityCaptureDServer)initWithQueue:(id)queue;
- (void)_checkMusicAccount:(id)account;
- (void)_endpointToMediaRemoteIdentifier:(id)identifier completion:(id)completion;
- (void)_exitSessionIfApplicableForDeviceIdentifier:(id)identifier exitReason:(id)reason;
- (void)_fetchLocalParticipantInfo:(id)info;
- (void)_joinGroupSessionRequestFinishedWithSessionIdentifier:(id)identifier requestID:(id)d error:(id)error;
- (void)_joinGroupSessionWithURLString:(id)string;
- (void)_launchShieldUIForDeviceIdentifier:(id)identifier name:(id)name model:(int64_t)model skipPlacementStep:(BOOL)step isDedicated:(BOOL)dedicated micOnly:(BOOL)only;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_relayMessage:(id)message toDeviceWithIdentifier:(id)identifier andModel:(int64_t)model;
- (void)_resolveUserPauseState;
- (void)_skipPlacementStepIfApplicable;
- (void)_teardownShieldUI;
- (void)_teardownSingShieldUIIfNeeded;
- (void)_updateLocalParticipantInfo;
- (void)activate;
- (void)callActive:(BOOL)active;
- (void)cancel;
- (void)createSession:(id)session;
- (void)dealloc;
- (void)disconnectSession:(BOOL)session reason:(id)reason;
- (void)groupSession:(id)session didInvalidateWithError:(id)error;
- (void)groupSession:(id)session didUpdateMembers:(id)members;
- (void)groupSession:(id)session didUpdateParticipants:(id)participants;
- (void)groupSessionDidConnect:(id)connect;
- (void)groupSessionDiscovery:(id)discovery activeSessionDidChange:(id)change;
- (void)groupSessionDiscovery:(id)discovery discoveredSessionsDidChange:(id)change;
- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification;
- (void)invalidateCurrentSession;
- (void)launchShieldUIForDeviceIdentifier:(id)identifier name:(id)name model:(int64_t)model skipPlacementStep:(BOOL)step isDedicated:(BOOL)dedicated micOnly:(BOOL)only;
- (void)leaveWranglerIfActive;
- (void)lockScreenLayoutMonitor:(id)monitor didUpdateLayoutWithShieldFrontMost:(BOOL)most lockscreenInLayout:(BOOL)layout;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseSessionForEvent:(int64_t)event;
- (void)postCameraCapabilitiesToDeviceWithIdentifier:(id)identifier andModel:(int64_t)model;
- (void)postEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)postEvent:(id)event toSession:(id)session;
- (void)prepareForPullConversation:(id)conversation;
- (void)refreshPrivacyAcknowledgement;
- (void)relayMessage:(id)message toDeviceWithIdentifier:(id)identifier andModel:(int64_t)model;
- (void)requestContinuityCaptureUIConfiguration:(id)configuration;
- (void)resetCurrentSession:(id)session added:(BOOL)added completion:(id)completion;
- (void)resumeStreamingForEvent:(int64_t)event;
- (void)routingController:(id)controller pickedRouteDidChange:(id)change;
- (void)setupBoracay;
- (void)setupDisplayServer;
- (void)setupRPRemoteDisplayDiscovery;
- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier;
- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier;
- (void)shieldDidConnect:(id *)connect;
- (void)shieldDidDisconnect;
- (void)skipPlacementStep;
- (void)teardownSession;
- (void)teardownShieldUI;
- (void)updateSystemStateForDeviceIdentifier:(id)identifier andModel:(int64_t)model;
@end

@implementation CMContinuityCaptureDServer

- (void)dealloc
{
  v3 = atomic_load(&self->_observingActiveKVOs);
  if (v3)
  {
    v4 = +[CCDShieldUILifeCycleManager sharedInstance];
    [v4 removeObserver:self forKeyPath:@"activeSession" context:0];

    v5 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    [v5 removeObserver:self forKeyPath:CMContinuityCaptureCallStateKVOKey context:0];
  }

  v6.receiver = self;
  v6.super_class = CMContinuityCaptureDServer;
  [(CMContinuityCaptureDServer *)&v6 dealloc];
}

- (void)requestContinuityCaptureUIConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer requestContinuityCaptureUIConfiguration:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", &v9, 0x16u);
  }

  v6 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v6 activeSession];
  configuration = [activeSession configuration];
  configurationCopy[2](configurationCopy, configuration);
}

- (void)resumeStreamingForEvent:(int64_t)event
{
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer resumeStreamingForEvent:]";
    v13 = 1024;
    eventCopy = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s event %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000513C;
  v7[3] = &unk_10001C920;
  objc_copyWeak(v8, &location);
  v8[1] = event;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)pauseSessionForEvent:(int64_t)event
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005290;
  v6[3] = &unk_10001C948;
  objc_copyWeak(v7, &location);
  v7[1] = event;
  v6[4] = self;
  dispatch_async(queue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)disconnectSession:(BOOL)session reason:(id)reason
{
  sessionCopy = session;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v7 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v7 activeSession];

  v9 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDServer disconnectSession:reason:]";
    v23 = 2114;
    v24 = reasonCopy;
    v25 = 1024;
    v26 = sessionCopy;
    v27 = 2114;
    v28 = activeSession;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s reason %{public}@ relayMessage %d activeSession %{public}@", buf, 0x30u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005634;
  block[3] = &unk_10001C970;
  objc_copyWeak(&v17, &location);
  v14 = activeSession;
  selfCopy2 = self;
  v16 = reasonCopy;
  v18 = sessionCopy;
  v11 = reasonCopy;
  v12 = activeSession;
  dispatch_async(queue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)skipPlacementStep
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDServer skipPlacementStep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B40;
  block[3] = &unk_10001C6E0;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)prepareForPullConversation:(id)conversation
{
  conversationCopy = conversation;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureDServer prepareForPullConversation:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005CCC;
  v8[3] = &unk_10001C998;
  objc_copyWeak(&v10, &location);
  v9 = conversationCopy;
  v7 = conversationCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)refreshPrivacyAcknowledgement
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureDServer refreshPrivacyAcknowledgement]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:ICUserIdentityStoreDidChangeNotification object:0];
}

- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureDServer setupSingSessionFromURL:remoteDisplayIdentifier:]";
    v20 = 2112;
    v21 = lCopy;
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F70;
  block[3] = &unk_10001C9C0;
  objc_copyWeak(&v15, &location);
  v13 = identifierCopy;
  v14 = lCopy;
  v10 = lCopy;
  v11 = identifierCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier
{
  identifierCopy = identifier;
  displayIdentifierCopy = displayIdentifier;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v17 = 2080;
    v18 = "[CMContinuityCaptureDServer setupSingSessionWithMediaRouteIdentifier:remoteDisplayIdentifier:]";
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = displayIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000636C;
  block[3] = &unk_10001CA38;
  block[4] = self;
  v13 = displayIdentifierCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = displayIdentifierCopy;
  dispatch_async(queue, block);
}

- (void)_joinGroupSessionWithURLString:(id)string
{
  stringCopy = string;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer _joinGroupSessionWithURLString:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000067D4;
  v7[3] = &unk_10001CA10;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  [(CMContinuityCaptureDServer *)self _checkMusicAccount:v7];
}

- (void)_joinGroupSessionRequestFinishedWithSessionIdentifier:(id)identifier requestID:(id)d error:(id)error
{
  identifierCopy = identifier;
  dCopy = d;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v11 = self->_groupSessionRequestUUID;
  groupSessionRequestUUID = self->_groupSessionRequestUUID;
  self->_groupSessionRequestUUID = 0;

  if ([(NSUUID *)v11 isEqual:dCopy])
  {
    v13 = CMContinuityCaptureLog();
    v14 = v13;
    if (errorCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543874;
        selfCopy3 = self;
        v17 = 2114;
        v18 = errorCopy;
        v19 = 2112;
        v20 = dCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ failed to join MRGroupSession with error: %{public}@ requestID: %@", &v15, 0x20u);
      }

      v14 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      [v14 presentShieldError:1 userInfo:0];
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      selfCopy3 = self;
      v17 = 2114;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully joined MRGroupSession: %{public}@ requestID: %@", &v15, 0x20u);
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138544386;
      selfCopy3 = self;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ join group session request finished for a different request ID (requestID: %@, currentRequestID: %@) result identifier: %@ error: %@", &v15, 0x34u);
    }
  }
}

- (void)_endpointToMediaRemoteIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempting to endpoint to %@", buf, 0xCu);
  }

  v9 = [identifierCopy copy];
  singSessionMediaRemoteIdentifier = self->_singSessionMediaRemoteIdentifier;
  self->_singSessionMediaRemoteIdentifier = v9;

  if (identifierCopy)
  {
    mediaRemoteIdentifier = identifierCopy;
    v12 = @"connect continuity sing";
  }

  else
  {
    localDevice = [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient localDevice];
    mediaRemoteIdentifier = [localDevice mediaRemoteIdentifier];

    v12 = @"disconnect continuity sing";
  }

  v14 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:mediaRemoteIdentifier reason:v12];
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006F20;
  v18[3] = &unk_10001CAB0;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = identifierCopy;
  [v14 perform:queue completion:v18];
}

- (void)_checkMusicAccount:(id)account
{
  accountCopy = account;
  v5 = +[ICMediaUserStateCenter shared];
  activeUserState = [v5 activeUserState];

  if (activeUserState)
  {
    v7 = +[ICPrivacyInfo sharedPrivacyInfo];
    privacyAcknowledgementRequiredForMusic = [v7 privacyAcknowledgementRequiredForMusic];

    v9 = +[ICMediaUserStateCenter shared];
    activeUserState2 = [v9 activeUserState];
    music = [activeUserState2 music];
    userProfile = [music userProfile];
    displayNameAccepted = [userProfile displayNameAccepted];

    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v31 = 1024;
      v32 = privacyAcknowledgementRequiredForMusic ^ 1;
      v33 = 1024;
      v34 = displayNameAccepted;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved music account state hasAcceptedPrivacyAck:%d hasAcceptedDisplayName:%d", buf, 0x18u);
    }

    if (privacyAcknowledgementRequiredForMusic)
    {
      v15 = 2;
    }

    else if (displayNameAccepted)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    accountCopy[2](accountCopy, v15);
  }

  else
  {
    v16 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to get ICMediaUser activeUserState, reloading", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17 = [MSVBlockGuard alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000073B4;
    v26[3] = &unk_10001CAD8;
    objc_copyWeak(&v28, buf);
    v18 = accountCopy;
    v27 = v18;
    v19 = [v17 initWithTimeout:v26 interruptionHandler:15.0];
    v20 = +[ICMediaUserStateCenter shared];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000074E8;
    v22[3] = &unk_10001CB28;
    objc_copyWeak(&v25, buf);
    v21 = v19;
    v23 = v21;
    v24 = v18;
    [v20 refreshUserStatesWithCompletion:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)_updateLocalParticipantInfo
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureDServer _updateLocalParticipantInfo]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007858;
  v4[3] = &unk_10001CB50;
  objc_copyWeak(&v5, &location);
  [(CMContinuityCaptureDServer *)self _fetchLocalParticipantInfo:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_fetchLocalParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v27 = 2080;
    v28 = "[CMContinuityCaptureDServer _fetchLocalParticipantInfo:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  v6 = +[ICMediaUserStateCenter shared];
  activeUserState = [v6 activeUserState];

  if (activeUserState)
  {
    music = [activeUserState music];
    userProfile = [music userProfile];

    socialProfile = [userProfile socialProfile];

    if (socialProfile)
    {
      socialProfile2 = [userProfile socialProfile];
      name = [socialProfile2 name];
      v13 = name;
      if (name)
      {
        name2 = name;
      }

      else
      {
        name2 = [userProfile name];
      }

      v18 = name2;

      v19 = [CMContinuityCaptureParticipantInfo alloc];
      socialProfile3 = [userProfile socialProfile];
      socialProfileID = [socialProfile3 socialProfileID];
      v22 = [v19 initWithSocialProfileIdentifier:socialProfileID displayName:v18];

      infoCopy[2](infoCopy, v22);
    }

    else
    {
      v17 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100011A30();
      }

      infoCopy[2](infoCopy, 0);
    }
  }

  else
  {
    v15 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ unable to get ICMediaUser activeUserState, reloading", buf, 0xCu);
    }

    v16 = +[ICMediaUserStateCenter shared];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007DD4;
    v23[3] = &unk_10001CBA0;
    v23[4] = self;
    v24 = infoCopy;
    [v16 refreshUserStatesWithCompletion:v23];

    userProfile = v24;
  }
}

- (void)postCameraCapabilitiesToDeviceWithIdentifier:(id)identifier andModel:(int64_t)model
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000819C;
  v22 = sub_1000081AC;
  v23 = 0;
  v7 = &_dispatch_main_q;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000081B4;
  block[3] = &unk_10001CBC8;
  block[4] = &v18;
  dispatch_async_and_wait(&_dispatch_main_q, block);

  dictionaryRepresentation = [v19[5] dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ capabilities dispatched to %{public}@", buf, 0x16u);
    }

    v11[0] = ContinuityCaptureRapportClientMessageTypeKey;
    v11[1] = ContinuityCaptureRapportClientEventCapabilitiesPayloadKey;
    v12[0] = &off_10001D370;
    v12[1] = dictionaryRepresentation;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(CMContinuityCaptureDServer *)self relayMessage:v10 toDeviceWithIdentifier:identifierCopy andModel:model];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)postEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = eventCopy;
    v16 = 2114;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ event %{public}@ dispatch event to %{public}@", buf, 0x20u);
  }

  v10[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v10[1] = ContinuityCaptureRapportClientEventNameKey;
  v11[0] = &off_10001D358;
  v11[1] = eventCopy;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(CMContinuityCaptureDServer *)self relayMessage:v9 toDeviceWithIdentifier:identifierCopy andModel:0];
}

- (void)relayMessage:(id)message toDeviceWithIdentifier:(id)identifier andModel:(int64_t)model
{
  messageCopy = message;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  sidebandMessageQueue = self->_sidebandMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008414;
  block[3] = &unk_10001CBF0;
  objc_copyWeak(v16, &location);
  v14 = messageCopy;
  v15 = identifierCopy;
  v16[1] = model;
  v11 = identifierCopy;
  v12 = messageCopy;
  dispatch_async(sidebandMessageQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_relayMessage:(id)message toDeviceWithIdentifier:(id)identifier andModel:(int64_t)model
{
  messageCopy = message;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_sidebandMessageQueue);
  v10 = dispatch_get_global_queue(2, 0);
  v11 = dispatch_semaphore_create(0);
  v12 = objc_alloc_init(RPCompanionLinkDevice);
  [v12 setIdentifier:identifierCopy];
  v13 = objc_alloc_init(RPCompanionLinkClient);
  [v13 setDispatchQueue:v10];
  controlFlags = [v13 controlFlags];
  if (model == 1)
  {
    v15 = 65542;
  }

  else
  {
    v15 = 0x180000010006;
  }

  [v13 setControlFlags:controlFlags | v15];
  [v13 setDestinationDevice:v12];
  v16 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(&location);
    *buf = 138544130;
    v28 = v17;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = v13;
    v33 = 1024;
    modelCopy = model;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Device to Connect %{public}@ overClient %{public}@ model %d", buf, 0x26u);
  }

  if (v12)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008724;
    v21[3] = &unk_10001CC40;
    objc_copyWeak(&v26, &location);
    v18 = v11;
    v22 = v18;
    v23 = messageCopy;
    v19 = v13;
    v24 = v19;
    v25 = v12;
    [v19 activateWithCompletion:v21];
    v20 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v18, v20);
    [v19 invalidate];

    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&location);
}

- (void)shieldDidDisconnect
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008B90;
  block[3] = &unk_10001CC68;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)shieldDidConnect:(id *)connect
{
  v4 = +[CCDShieldUILifeCycleManager sharedInstance];
  v5 = *&connect->var0[4];
  v6[0] = *connect->var0;
  v6[1] = v5;
  [v4 shieldDidConnect:v6];
}

- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification
{
  notificationCopy = notification;
  callCopy = call;
  dataCopy = data;
  objc_initWeak(&location, self);
  v9 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureDServer incomingCall:data:shouldDisplayNotification:]";
    v21 = 1024;
    v22 = callCopy;
    v23 = 1024;
    v24 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s status %d shouldDisplayNotification: %d", buf, 0x22u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008EF8;
  block[3] = &unk_10001CC90;
  objc_copyWeak(&v14, &location);
  v15 = callCopy;
  v13 = dataCopy;
  v16 = notificationCopy;
  v11 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)callActive:(BOOL)active
{
  activeCopy = active;
  v5 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v5 activeSession];
  if (activeSession)
  {
    v7 = activeSession;
    v8 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession2 = [v8 activeSession];
    configuration = [activeSession2 configuration];
    clientDeviceModel = [configuration clientDeviceModel];

    if (clientDeviceModel == 2)
    {
      v12 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v21 = 2080;
        v22 = "[CMContinuityCaptureDServer callActive:]";
        v23 = 1024;
        v24 = activeCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %s status %d, ignore event for atv session", buf, 0x1Cu);
      }

      return;
    }
  }

  else
  {
  }

  objc_initWeak(&location, self);
  v13 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDServer callActive:]";
    v23 = 1024;
    v24 = activeCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ %s status %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000927C;
  block[3] = &unk_10001CCB8;
  objc_copyWeak(&v16, &location);
  v17 = activeCopy;
  dispatch_async(queue, block);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)activate
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureDServer activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000094B8;
  v10[3] = &unk_10001C8A8;
  objc_copyWeak(&v11, buf);
  v4 = objc_retainBlock(v10);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009578;
  block[3] = &unk_10001C998;
  objc_copyWeak(&v9, buf);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009684;
  v4[3] = &unk_10001C6E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)launchShieldUIForDeviceIdentifier:(id)identifier name:(id)name model:(int64_t)model skipPlacementStep:(BOOL)step isDedicated:(BOOL)dedicated micOnly:(BOOL)only
{
  identifierCopy = identifier;
  nameCopy = name;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000097F4;
  v19[3] = &unk_10001CCE0;
  objc_copyWeak(v22, &location);
  v20 = identifierCopy;
  v21 = nameCopy;
  v22[1] = model;
  stepCopy = step;
  dedicatedCopy = dedicated;
  onlyCopy = only;
  v17 = nameCopy;
  v18 = identifierCopy;
  dispatch_async(queue, v19);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)_launchShieldUIForDeviceIdentifier:(id)identifier name:(id)name model:(int64_t)model skipPlacementStep:(BOOL)step isDedicated:(BOOL)dedicated micOnly:(BOOL)only
{
  stepCopy = step;
  identifierCopy = identifier;
  nameCopy = name;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v16 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v29 = 2080;
    v30 = "[CMContinuityCaptureDServer _launchShieldUIForDeviceIdentifier:name:model:skipPlacementStep:isDedicated:micOnly:]";
    v31 = 2114;
    v32 = identifierCopy;
    v33 = 1024;
    v34 = stepCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ %s identifier %{public}@ skipPlacementStep %d", buf, 0x26u);
  }

  shieldLaunchCheckQueue = self->_shieldLaunchCheckQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009A14;
  block[3] = &unk_10001CCE0;
  objc_copyWeak(v23, &location);
  v23[1] = model;
  v24 = stepCopy;
  onlyCopy = only;
  v21 = identifierCopy;
  v22 = nameCopy;
  dedicatedCopy = dedicated;
  v18 = nameCopy;
  v19 = identifierCopy;
  dispatch_async(shieldLaunchCheckQueue, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)teardownShieldUI
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A4A4;
  v4[3] = &unk_10001C6E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_teardownShieldUI
{
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v3 activeSession];

  if (activeSession)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2080;
      v15 = "[CMContinuityCaptureDServer _teardownShieldUI]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    v6 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession2 = [v6 activeSession];
    pauseStateSolver = [activeSession2 pauseStateSolver];
    [pauseStateSolver saveUserPauseState:0];

    v9 = +[CCDShieldUILifeCycleManager sharedInstance];
    [v9 tearDownShield];

    [(CMContinuityCaptureDServer *)self leaveWranglerIfActive];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A6AC;
    block[3] = &unk_10001C6E0;
    objc_copyWeak(&v11, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

- (void)_teardownSingShieldUIIfNeeded
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer _teardownSingShieldUIIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v9, 0x16u);
  }

  v4 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v4 activeSession];
  configuration = [activeSession configuration];

  if (_os_feature_enabled_impl() && [configuration micOnly])
  {
    dispatch_assert_queue_V2(self->_queue);
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    if (selfCopy2->_activeGroupSession || selfCopy2->_inLagunaSession)
    {
      objc_sync_exit(selfCopy2);
    }

    else
    {
      singSessionMediaRemoteIdentifier = selfCopy2->_singSessionMediaRemoteIdentifier;
      objc_sync_exit(selfCopy2);

      if (!singSessionMediaRemoteIdentifier)
      {
        [(CMContinuityCaptureDServer *)selfCopy2 _teardownShieldUI];
      }
    }
  }
}

- (BOOL)activeCallSession
{
  v2 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  if ([v2 callState])
  {
    v3 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    v4 = [v3 activeCallCountOnMainQueue] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)createSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_rpServer)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ skip create session", buf, 0xCu);
    }
  }

  else
  {
    [CMContinuityCaptureRemoteCompositeDevice setWombatMode:1];
    v5 = [CMContinuityCaptureDServer sessionIdentifier:sessionCopy];
    dedicatedDevice = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery dedicatedDevice];
    idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
    v8 = [idsDeviceIdentifier isEqual:v5];

    v9 = voucher_copy();
    v10 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v20 = 2114;
      v21 = sessionCopy;
      v22 = 2112;
      v23 = v9;
      v24 = 1024;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ create session for %{public}@ voucher %@ isDedicated: %d", buf, 0x26u);
    }

    v11 = [CMContinuityCaptureRapportServer alloc];
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000ABF8;
    v17[3] = &unk_10001CD30;
    v17[4] = self;
    v13 = [v11 initWithRapportDisplaySession:sessionCopy queue:queue voucher:v9 incomingStreamRequestHandler:v17];
    rpServer = self->_rpServer;
    self->_rpServer = v13;

    compositeDevice = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];

    if (compositeDevice)
    {
      compositeDevice2 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      [compositeDevice2 addObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey options:3 context:0];

      [(CMContinuityCaptureRapportServer *)self->_rpServer addObserver:self forKeyPath:CMContinuityCaptureRemoteStreamPreStartConfigKVOKey options:3 context:0];
    }
  }
}

- (void)invalidateCurrentSession
{
  dispatch_assert_queue_V2(self->_queue);
  rpServer = self->_rpServer;
  if (rpServer)
  {

    [(CMContinuityCaptureRapportServer *)rpServer invalidateCurrentSession:0];
  }
}

+ (id)sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  destinationDevice = [identifierCopy destinationDevice];
  idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
  if (idsDeviceIdentifier && ([identifierCopy destinationDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "idsDeviceIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "length")))
  {
    destinationDevice2 = [identifierCopy destinationDevice];
    idsDeviceIdentifier2 = [destinationDevice2 idsDeviceIdentifier];
  }

  else
  {
    destinationDevice3 = [identifierCopy destinationDevice];
    idsDeviceIdentifier2 = [destinationDevice3 identifier];

    if (!idsDeviceIdentifier)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  if (idsDeviceIdentifier2)
  {
    v11 = idsDeviceIdentifier2;
  }

  else
  {
    v11 = &stru_10001D200;
  }

  return v11;
}

- (void)postEvent:(id)event toSession:(id)session
{
  eventCopy = event;
  sessionCopy = session;
  objc_initWeak(&location, self);
  objc_initWeak(&from, sessionCopy);
  v16[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v16[1] = ContinuityCaptureRapportClientEventNameKey;
  v17[0] = &off_10001D370;
  v17[1] = eventCopy;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v9 = ContinuityCaptureSessionEventID;
  v10 = RPDestinationIdentifierDirectPeer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B040;
  v12[3] = &unk_10001CD58;
  objc_copyWeak(&v14, &location);
  v11 = eventCopy;
  v13 = v11;
  objc_copyWeak(&v15, &from);
  [sessionCopy sendEventID:v9 event:v8 destinationID:v10 options:0 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)resetCurrentSession:(id)session added:(BOOL)added completion:(id)completion
{
  addedCopy = added;
  sessionCopy = session;
  sessionCopy2 = session;
  completionCopy = completion;
  v11 = [CMContinuityCaptureDServer sessionIdentifier:sessionCopy2];
  destinationDevice = [sessionCopy2 destinationDevice];
  model = [destinationDevice model];
  v14 = CMContinuityCaptureDeviceModelFromModelString();

  dedicatedDevice = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery dedicatedDevice];
  idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
  v97 = [idsDeviceIdentifier isEqual:v11];

  v17 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    rpServer = self->_rpServer;
    connectedRPDisplaySession = self->_connectedRPDisplaySession;
    *buf = 138544898;
    selfCopy15 = self;
    v100 = 2080;
    v101 = "[CMContinuityCaptureDServer resetCurrentSession:added:completion:]";
    v102 = 2114;
    v103 = rpServer;
    v104 = 2114;
    v105 = connectedRPDisplaySession;
    v106 = 2114;
    v107 = sessionCopy2;
    v108 = 1024;
    v109 = addedCopy;
    v110 = 2114;
    v111 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %s rpServer %{public}@ _connectedRPDisplaySession %{public}@ resetSession %{public}@ added %d destinationDeviceIdentifier %{public}@", buf, 0x44u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!FigContinuityCaptureGetUserPreferenceDisabled() || !addedCopy)
  {
    v96 = v14;
    p_connectedRPDisplaySession = &self->_connectedRPDisplaySession;
    if (self->_connectedRPDisplaySession)
    {
      v22 = self->_rpServer;
      if (!v22)
      {
        goto LABEL_21;
      }

      displaySession = [(CMContinuityCaptureRapportServer *)v22 displaySession];
      v24 = [displaySession isEqual:sessionCopy2];

      if (v24)
      {
        v25 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy15 = self;
          v100 = 2114;
          v101 = sessionCopy2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidate current session %{public}@", buf, 0x16u);
        }

        v26 = self->_connectedRPDisplaySession;
        self->_connectedRPDisplaySession = 0;

        [(CMContinuityCaptureDServer *)self invalidateCurrentSession];
        if (![(NSMutableArray *)self->_sessionsPendingActivation count])
        {
          goto LABEL_77;
        }

        firstObject = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
        v28 = [CMContinuityCaptureDServer sessionIdentifier:firstObject];
        v29 = [v28 isEqualToString:v11];

        if (v29)
        {
          v30 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            firstObject2 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
            *buf = 138544130;
            selfCopy15 = self;
            v100 = 2114;
            v101 = v11;
            v102 = 2114;
            v103 = sessionCopy2;
            v104 = 2114;
            v105 = firstObject2;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset (from pending activation) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
          }

          v32 = self->_rpServer;
          firstObject3 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          [(CMContinuityCaptureRapportServer *)v32 resetDisplaySession:firstObject3];

          firstObject4 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          v35 = self->_connectedRPDisplaySession;
          self->_connectedRPDisplaySession = firstObject4;

LABEL_76:
          [(NSMutableArray *)self->_sessionsPendingActivation removeObjectAtIndex:0];
          goto LABEL_77;
        }

        if (!self->_sessionClearOutBlock)
        {
          v75 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            firstObject5 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
            *buf = 138543618;
            selfCopy15 = self;
            v100 = 2114;
            v101 = firstObject5;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection (from pending activation) %{public}@", buf, 0x16u);
          }

          v77 = +[CCDShieldUILifeCycleManager sharedInstance];
          activeSession = [v77 activeSession];
          if (activeSession)
          {
            v79 = activeSession;
            v80 = +[CCDShieldUILifeCycleManager sharedInstance];
            activeSession2 = [v80 activeSession];
            [activeSession2 configuration];
            v83 = v82 = completionCopy;
            v84 = sessionCopy2;
            v85 = v11;
            clientDeviceModel = [v83 clientDeviceModel];

            completionCopy = v82;
            v87 = clientDeviceModel == 2;
            v11 = v85;
            sessionCopy2 = v84;
            if (!v87)
            {
              [(CMContinuityCaptureDServer *)self teardownShieldUI];
            }
          }

          else
          {
          }

          [(CMContinuityCaptureDServer *)self teardownSession];
          v91 = kCMContinuityCaptureEventCaptureSessionEnded;
          firstObject6 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          [(CMContinuityCaptureDServer *)self postEvent:v91 toSession:firstObject6];

          goto LABEL_76;
        }

LABEL_77:
        completionCopy[2](completionCopy);
        [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
        goto LABEL_78;
      }

      if (*p_connectedRPDisplaySession)
      {
        goto LABEL_21;
      }
    }

    v36 = self->_rpServer;
    if (!v36 || (-[CMContinuityCaptureRapportServer displaySession](v36, "displaySession"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isEqual:sessionCopy2], v37, (v38 & 1) != 0))
    {
LABEL_21:
      v39 = self->_rpServer;
      if (v39)
      {
LABEL_22:
        if (!*p_connectedRPDisplaySession)
        {
          goto LABEL_24;
        }

        displaySession2 = [(CMContinuityCaptureRapportServer *)v39 displaySession];
        v41 = [displaySession2 isEqual:sessionCopy2];

        if (v41)
        {
          goto LABEL_24;
        }

        if (addedCopy)
        {
          v54 = sessionCopy;
          displaySession3 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
          v56 = [CMContinuityCaptureDServer sessionIdentifier:displaySession3];
          v57 = [v56 isEqualToString:v11];

          v58 = CMContinuityCaptureLog();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          if (v57)
          {
            if (v59)
            {
              displaySession4 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
              *buf = 138544130;
              selfCopy15 = self;
              v100 = 2114;
              v101 = v11;
              v102 = 2114;
              v103 = displaySession4;
              v104 = 2114;
              v105 = sessionCopy2;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset ((ongoing session) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
            }

            [(CMContinuityCaptureDServer *)self invalidateCurrentSession];
            [(CMContinuityCaptureRapportServer *)self->_rpServer resetDisplaySession:sessionCopy2];
            v61 = &self->_connectedRPDisplaySession;
            v62 = v54;
LABEL_49:
            objc_storeStrong(v61, v62);
            goto LABEL_77;
          }

          if (v59)
          {
            v89 = self->_connectedRPDisplaySession;
            *buf = 138543874;
            selfCopy15 = self;
            v100 = 2114;
            v101 = sessionCopy2;
            v102 = 2114;
            v103 = v89;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@ (ongoing session: %{public}@)", buf, 0x20u);
          }

          goto LABEL_72;
        }

        if (![(NSMutableArray *)self->_sessionsPendingActivation containsObject:sessionCopy2])
        {
          goto LABEL_77;
        }

        v50 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v73 = self->_connectedRPDisplaySession;
          *buf = 138543874;
          selfCopy15 = self;
          v100 = 2114;
          v101 = sessionCopy2;
          v102 = 2114;
          v103 = v73;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection removed %{public}@ (ongoing session: %{public}@)", buf, 0x20u);
        }

        goto LABEL_67;
      }

      obj = sessionCopy;
      v43 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession3 = [v43 activeSession];
      if (activeSession3)
      {
        v45 = activeSession3;
        v46 = +[CCDShieldUILifeCycleManager sharedInstance];
        [v46 activeSession];
        v94 = sessionCopy2;
        v48 = v47 = completionCopy;
        deviceIdentifier = [v48 deviceIdentifier];
        v93 = [deviceIdentifier isEqualToString:v11];

        completionCopy = v47;
        sessionCopy2 = v94;

        if ((v93 & 1) == 0)
        {
          v50 = CMContinuityCaptureLog();
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          if (addedCopy)
          {
            if (v51)
            {
              v52 = +[CCDShieldUILifeCycleManager sharedInstance];
              activeSession4 = [v52 activeSession];
              *buf = 138543874;
              selfCopy15 = self;
              v100 = 2114;
              v101 = activeSession4;
              v102 = 2114;
              v103 = v94;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Shield active for %{public}@, set new connection %{public}@ as pending", buf, 0x20u);
            }

            goto LABEL_73;
          }

          if (!v51)
          {
            goto LABEL_67;
          }

          displaySession8 = +[CCDShieldUILifeCycleManager sharedInstance];
          activeSession5 = [displaySession8 activeSession];
          *buf = 138543874;
          selfCopy15 = self;
          v100 = 2114;
          v101 = activeSession5;
          v102 = 2114;
          v103 = v94;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Shield active for %{public}@, remove new connection %{public}@ from pending state", buf, 0x20u);

          goto LABEL_66;
        }
      }

      else
      {
      }

      v39 = self->_rpServer;
      if (!v39 && addedCopy)
      {
        v69 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy15 = self;
          v100 = 2114;
          v101 = sessionCopy2;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@", buf, 0x16u);
        }

        v70 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery discoverySessionStartReason]== 3;
        destinationDevice2 = [sessionCopy2 destinationDevice];
        name = [destinationDevice2 name];
        [(CMContinuityCaptureDServer *)self launchShieldUIForDeviceIdentifier:v11 name:name model:v96 skipPlacementStep:v96 != 2 isDedicated:v97 micOnly:v70];

        [(CMContinuityCaptureDServer *)self createSession:sessionCopy2];
        v61 = &self->_connectedRPDisplaySession;
        v62 = obj;
        goto LABEL_49;
      }

      sessionCopy = obj;
      if (!v39)
      {
LABEL_24:
        v42 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy15 = self;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Unknown case", buf, 0xCu);
        }

        goto LABEL_77;
      }

      goto LABEL_22;
    }

    if (addedCopy)
    {
      v63 = completionCopy;
      displaySession5 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
      v65 = [CMContinuityCaptureDServer sessionIdentifier:displaySession5];
      v66 = [v65 isEqualToString:v11];

      v58 = CMContinuityCaptureLog();
      v67 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        completionCopy = v63;
        if (v67)
        {
          displaySession6 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
          *buf = 138544130;
          selfCopy15 = self;
          v100 = 2114;
          v101 = v11;
          v102 = 2114;
          v103 = displaySession6;
          v104 = 2114;
          v105 = sessionCopy2;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset (with pending termination) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
        }

        [(CMContinuityCaptureRapportServer *)self->_rpServer resetDisplaySession:sessionCopy2];
        v61 = &self->_connectedRPDisplaySession;
        v62 = sessionCopy;
        goto LABEL_49;
      }

      completionCopy = v63;
      if (v67)
      {
        displaySession7 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
        *buf = 138543874;
        selfCopy15 = self;
        v100 = 2114;
        v101 = sessionCopy2;
        v102 = 2114;
        v103 = displaySession7;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@ (with pending termination %{public}@)", buf, 0x20u);
      }

LABEL_72:

LABEL_73:
      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventCaptureSessionStarted toSession:sessionCopy2];
      [(NSMutableArray *)self->_sessionsPendingActivation addObject:sessionCopy2];
      goto LABEL_77;
    }

    if (![(NSMutableArray *)self->_sessionsPendingActivation containsObject:sessionCopy2])
    {
      goto LABEL_77;
    }

    v50 = CMContinuityCaptureLog();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
LABEL_67:

      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventCaptureSessionEnded toSession:sessionCopy2];
      [(NSMutableArray *)self->_sessionsPendingActivation removeObject:sessionCopy2];
      goto LABEL_77;
    }

    displaySession8 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
    *buf = 138543874;
    selfCopy15 = self;
    v100 = 2114;
    v101 = sessionCopy2;
    v102 = 2114;
    v103 = displaySession8;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection removed %{public}@ (with pending termination %{public}@)", buf, 0x20u);
LABEL_66:

    goto LABEL_67;
  }

  v20 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy15 = self;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ can't allow connection in user disabled mode", buf, 0xCu);
  }

  [(CMContinuityCaptureDServer *)self _exitSessionIfApplicableForDeviceIdentifier:v11 exitReason:kCMContinuityCaptureSessionExitReasonUserDisabled];
LABEL_78:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000BEA4;
  v17[3] = &unk_10001CD80;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  v10 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy10 = self;
    v87 = 2112;
    v88 = pathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ keypath %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([pathCopy isEqualToString:CMContinuityCaptureRemoteCompositeStateKVOKey])
  {
    v11 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    integerValue = [v11 integerValue];

    v13 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy10 = self;
      v87 = 2112;
      v88 = pathCopy;
      v89 = 1024;
      v90 = integerValue;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Observe key %@ state %d", buf, 0x1Cu);
    }

    if ((integerValue & 0x10) == 0)
    {
      goto LABEL_34;
    }

    sessionClearOutBlock = self->_sessionClearOutBlock;
    if (sessionClearOutBlock)
    {
      dispatch_block_cancel(sessionClearOutBlock);
    }

    v15 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      displaySession = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
      *buf = 138543618;
      selfCopy10 = self;
      v87 = 2112;
      v88 = displaySession;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ session %@ terminated", buf, 0x16u);
    }

    displaySession2 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10000CAB0;
    v83[3] = &unk_10001C6E0;
    objc_copyWeak(&v84, &location);
    [(CMContinuityCaptureDServer *)self resetCurrentSession:displaySession2 added:0 completion:v83];

    v18 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession = [v18 activeSession];
    if (activeSession)
    {
      v20 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession2 = [v20 activeSession];
      configuration = [activeSession2 configuration];
      clientDeviceModel = [configuration clientDeviceModel];

      if (clientDeviceModel != 2)
      {
        [(CMContinuityCaptureDServer *)self teardownShieldUI];
LABEL_33:
        objc_destroyWeak(&v84);
LABEL_34:
        v43 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession3 = [v43 activeSession];
        configuration2 = [activeSession3 configuration];
        [configuration2 setCompositeState:integerValue];

        selfCopy7 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v29 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession4 = [v29 activeSession];
        configuration3 = [activeSession4 configuration];
        [(CMContinuityCaptureDServer *)selfCopy7 updateClientsWithConfiguration:configuration3];

        goto LABEL_35;
      }
    }

    else
    {
    }

    integerValue |= 0x20uLL;
    goto LABEL_33;
  }

  if ([pathCopy isEqualToString:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey])
  {
    selfCopy7 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (![(CMContinuityCaptureDServer *)selfCopy7 BOOLValue])
    {
LABEL_36:

      goto LABEL_37;
    }

    v25 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %@ power button pressed", buf, 0xCu);
    }

    v26 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession5 = [v26 activeSession];
    pauseStateSolver = [activeSession5 pauseStateSolver];
    [pauseStateSolver sideButtonPressed];

    [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
    v29 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession4 = [v29 activeSession];
    pauseStateSolver2 = [activeSession4 pauseStateSolver];
    [pauseStateSolver2 sideButtonReleased];

LABEL_35:
    goto LABEL_36;
  }

  if ([pathCopy isEqualToString:CMContinuityCaptureCallStateKVOKey])
  {
    selfCopy7 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if ([(CMContinuityCaptureDServer *)selfCopy7 integerValue]== 2)
    {
      v32 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession6 = [v32 activeSession];
      pauseStateSolver3 = [activeSession6 pauseStateSolver];
      [pauseStateSolver3 incomingCallDeclinedStatusUpdated:1];

      [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
      v35 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession7 = [v35 activeSession];
      pauseStateSolver4 = [activeSession7 pauseStateSolver];
      [pauseStateSolver4 incomingCallDeclinedStatusUpdated:0];
    }

    if (([(CMContinuityCaptureDServer *)selfCopy7 integerValue]== 2 || [(CMContinuityCaptureDServer *)selfCopy7 integerValue]== 1) && [(NSMutableArray *)self->_sessionsPendingActivation count])
    {
      v38 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        firstObject = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
        *buf = 138412546;
        selfCopy10 = self;
        v87 = 2114;
        v88 = firstObject;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %@ call ended, resume session %{public}@", buf, 0x16u);
      }

      firstObject2 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventStreamDisableForDeviceInUseExit toSession:firstObject2];

      [(NSMutableArray *)self->_sessionsPendingActivation removeObjectAtIndex:0];
    }

    goto LABEL_36;
  }

  if (![pathCopy isEqualToString:CMContinuityCaptureRemoteStreamPreStartConfigKVOKey])
  {
    goto LABEL_42;
  }

  v41 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v42 = +[NSNull null];
  if ([v41 isEqual:v42])
  {

    goto LABEL_42;
  }

  v47 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v48 = +[NSNull null];
  v49 = [v47 isEqual:v48];

  if (!v49)
  {
LABEL_42:
    if (![pathCopy isEqualToString:@"activeSession"])
    {
      goto LABEL_37;
    }

    v51 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v52 = +[NSNull null];
    if ([v51 isEqual:v52])
    {
      v53 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v54 = +[NSNull null];
      v55 = [v53 isEqual:v54];

      if ((v55 & 1) == 0)
      {
        v56 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
          *buf = 138412546;
          selfCopy10 = self;
          v87 = 2114;
          v88 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %@ session terminated %{public}@", buf, 0x16u);
        }

        selfCopy7 = self;
        objc_sync_enter(selfCopy7);
        selfCopy7->_inLagunaSession = 0;
        objc_sync_exit(selfCopy7);
        goto LABEL_36;
      }
    }

    else
    {
    }

    selfCopy7 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v58 = +[NSNull null];
    if ([(CMContinuityCaptureDServer *)selfCopy7 isEqual:v58])
    {
    }

    else
    {
      v59 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v60 = +[NSNull null];
      v61 = [v59 isEqual:v60];

      if (!v61)
      {
        goto LABEL_37;
      }

      v62 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
        *buf = 138412546;
        selfCopy10 = self;
        v87 = 2114;
        v88 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, " %@ session started %{public}@", buf, 0x16u);
      }

      selfCopy9 = self;
      objc_sync_enter(selfCopy9);
      selfCopy9->_inLagunaSession = 1;
      objc_sync_exit(selfCopy9);

      localParticipantInfo = selfCopy9->_localParticipantInfo;
      if (localParticipantInfo)
      {
        v66 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession8 = [v66 activeSession];
        configuration4 = [activeSession8 configuration];
        [configuration4 setParticipantInfo:localParticipantInfo];

        v69 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v70 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession9 = [v70 activeSession];
        configuration5 = [activeSession9 configuration];
        [v69 updateClientsWithConfiguration:configuration5];
      }

      v81 = ContinuityCaptureRapportClientMessageTypeKey;
      v82 = &off_10001D3A0;
      selfCopy7 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v73 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession10 = [v73 activeSession];
      deviceIdentifier = [activeSession10 deviceIdentifier];
      v76 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession11 = [v76 activeSession];
      configuration6 = [activeSession11 configuration];
      -[CMContinuityCaptureDServer relayMessage:toDeviceWithIdentifier:andModel:](selfCopy9, "relayMessage:toDeviceWithIdentifier:andModel:", selfCopy7, deviceIdentifier, [configuration6 clientDeviceModel]);
    }

    goto LABEL_36;
  }

  v50 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy10 = self;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " %@ session prestarted, evaluate shield state", buf, 0xCu);
  }

  [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
LABEL_37:
  objc_destroyWeak(&location);
}

- (void)_resolveUserPauseState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v3 activeSession];
  pauseStateSolver = [activeSession pauseStateSolver];
  resolvePauseState = [pauseStateSolver resolvePauseState];

  v7 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectedRPDisplaySession = self->_connectedRPDisplaySession;
    compositeDevice = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
    v14 = 136315906;
    v15 = "[CMContinuityCaptureDServer _resolveUserPauseState]";
    v16 = 1024;
    v17 = resolvePauseState;
    v18 = 2112;
    v19 = connectedRPDisplaySession;
    v20 = 2112;
    v21 = compositeDevice;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s paused: %d connectedRPDisplaySession %@ compositeDevice %@", &v14, 0x26u);
  }

  if (self->_connectedRPDisplaySession)
  {
    compositeDevice2 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];

    if (compositeDevice2)
    {
      compositeDevice3 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      v12 = compositeDevice3;
      v13 = &kCMContinuityCaptureEventUserPause;
      if (!resolvePauseState)
      {
        v13 = &kCMContinuityCaptureEventUserResume;
      }

      [compositeDevice3 postEvent:*v13 entity:0 data:0];

      [CMContinuityCaptureRemoteCompositeDevice setWombatMode:resolvePauseState ^ 1];
    }
  }
}

- (void)_skipPlacementStepIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CCDShieldUILifeCycleManager sharedInstance];
  activeSession = [v3 activeSession];
  configuration = [activeSession configuration];
  placementStepSkipped = [configuration placementStepSkipped];

  if ([placementStepSkipped isEqualToNumber:&__kCFBooleanFalse])
  {
    v7 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession2 = [v7 activeSession];
    deviceIdentifier = [activeSession2 deviceIdentifier];

    v21 = ContinuityCaptureRapportClientMessageTypeKey;
    v22 = &off_10001D3B8;
    v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession3 = [v11 activeSession];
    configuration2 = [activeSession3 configuration];
    -[CMContinuityCaptureDServer relayMessage:toDeviceWithIdentifier:andModel:](self, "relayMessage:toDeviceWithIdentifier:andModel:", v10, deviceIdentifier, [configuration2 clientDeviceModel]);

    v14 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession4 = [v14 activeSession];
    configuration3 = [activeSession4 configuration];
    [configuration3 setPlacementStepSkipped:&__kCFBooleanTrue];

    v17 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v18 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession5 = [v18 activeSession];
    configuration4 = [activeSession5 configuration];
    [v17 updateClientsWithConfiguration:configuration4];
  }

  else
  {
    deviceIdentifier = CMContinuityCaptureLog();
    if (os_log_type_enabled(deviceIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v25 = 2080;
      v26 = "[CMContinuityCaptureDServer _skipPlacementStepIfApplicable]";
      v27 = 2112;
      v28 = placementStepSkipped;
      _os_log_impl(&_mh_execute_header, deviceIdentifier, OS_LOG_TYPE_DEFAULT, "%{public}@ %s current active session has placementStepSkipped %@. Ignore processing skip placement step", buf, 0x20u);
    }
  }
}

- (void)_exitSessionIfApplicableForDeviceIdentifier:(id)identifier exitReason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  if (!identifierCopy)
  {
    sub_100011C30(self, reasonCopy);
    goto LABEL_7;
  }

  if ([(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery currentState]!= 1)
  {
    v10 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentState = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery currentState];
      v15 = 138544386;
      selfCopy3 = self;
      v17 = 2080;
      v18 = "[CMContinuityCaptureDServer _exitSessionIfApplicableForDeviceIdentifier:exitReason:]";
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = reasonCopy;
      v23 = 1024;
      LODWORD(v24) = currentState;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s igoring request to exit session for device %@ with reason %@. rapport session state %d", &v15, 0x30u);
    }

    goto LABEL_13;
  }

  peerDeviceIdentifier = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery peerDeviceIdentifier];
  v9 = [peerDeviceIdentifier isEqualToString:identifierCopy];

  v10 = CMContinuityCaptureLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      peerDeviceIdentifier2 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery peerDeviceIdentifier];
      v15 = 138544386;
      selfCopy3 = self;
      v17 = 2080;
      v18 = "[CMContinuityCaptureDServer _exitSessionIfApplicableForDeviceIdentifier:exitReason:]";
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = reasonCopy;
      v23 = 2112;
      v24 = peerDeviceIdentifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s igoring request to exit session for device %@ with reason %@. rapport session device %@", &v15, 0x34u);
    }

LABEL_13:

    goto LABEL_7;
  }

  if (v11)
  {
    rpRemoteDisplayDiscovery = self->_rpRemoteDisplayDiscovery;
    v15 = 138544130;
    selfCopy3 = self;
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = rpRemoteDisplayDiscovery;
    v21 = 2112;
    v22 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ currently in session with device %@. Calling %@ to exit session for reason %@, ", &v15, 0x2Au);
  }

  [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery exitDiscoverySessionWithReason:reasonCopy];
LABEL_7:
}

- (void)updateSystemStateForDeviceIdentifier:(id)identifier andModel:(int64_t)model
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(NSMutableArray);
  dispatch_assert_queue_V2(self->_queue);
  v7 = [CMContinuityCaptureControl alloc];
  v8 = kCMContinuityCaptureControlBatteryLevel;
  v9 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  batteryLevel = [v9 batteryLevel];
  *buf = xmmword_1000149E0;
  *&buf[16] = 0;
  v11 = [v7 initWithName:v8 attributes:0 entity:4 minimumSupportedVersion:buf value:batteryLevel];

  v30 = 0;
  v12 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v30];
  v13 = v30;
  if (v12)
  {
    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      v29 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@ to %{public}@", buf, 0x20u);
    }

    [v6 addObject:v12];
  }

  v15 = [CMContinuityCaptureControl alloc];
  v16 = kCMContinuityCaptureControlBatteryState;
  v17 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 batteryState]);
  *buf = xmmword_1000149E0;
  *&buf[16] = 0;
  v19 = [v15 initWithName:v16 attributes:0 entity:4 minimumSupportedVersion:buf value:v18];

  v27 = v13;
  v20 = [NSKeyedArchiver archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v27];
  v21 = v27;

  if (v20)
  {
    v22 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      v29 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@ to %{public}@", buf, 0x20u);
    }

    [v6 addObject:v20];
  }

  v25[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v25[1] = ContinuityCaptureRapportClientSystemControlsKey;
  v26[0] = &off_10001D3D0;
  v26[1] = v6;
  v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(CMContinuityCaptureDServer *)self relayMessage:v23 toDeviceWithIdentifier:identifierCopy andModel:model];
}

- (void)setupRPRemoteDisplayDiscovery
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 2080;
    v17 = "[CMContinuityCaptureDServer setupRPRemoteDisplayDiscovery]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  v4 = objc_alloc_init(RPRemoteDisplayDiscovery);
  objc_storeStrong(&self->_rpRemoteDisplayDiscovery, v4);
  [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery setDispatchQueue:self->_queue];
  rpRemoteDisplayDiscovery = self->_rpRemoteDisplayDiscovery;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D71C;
  v12[3] = &unk_10001CDA8;
  objc_copyWeak(&v13, &location);
  [(RPRemoteDisplayDiscovery *)rpRemoteDisplayDiscovery setDiscoverySessionStateChangedHandler:v12];
  v6 = self->_rpRemoteDisplayDiscovery;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D894;
  v10[3] = &unk_10001CDD0;
  objc_copyWeak(&v11, &location);
  [(RPRemoteDisplayDiscovery *)v6 setDedicatedDeviceChangedHandler:v10];
  v7 = self->_rpRemoteDisplayDiscovery;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DA54;
  v8[3] = &unk_10001C8A8;
  objc_copyWeak(&v9, &location);
  [(RPRemoteDisplayDiscovery *)v7 activateWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (BOOL)setupSidebandRPClient
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 2080;
    v30 = "[CMContinuityCaptureDServer setupSidebandRPClient]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v4 = objc_alloc_init(RPCompanionLinkClient);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000DF04;
  v25[3] = &unk_10001C6E0;
  objc_copyWeak(&v26, buf);
  v5 = objc_retainBlock(v25);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000DF90;
  v23[3] = &unk_10001C6E0;
  objc_copyWeak(&v24, buf);
  v6 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E01C;
  v20[3] = &unk_10001CC68;
  objc_copyWeak(&v22, buf);
  v7 = v4;
  v21 = v7;
  v8 = objc_retainBlock(v20);
  if (v7)
  {
    objc_storeStrong(&self->_rpSidebandCompanionLinkClient, v4);
    rpSidebandCompanionLinkClient = self->_rpSidebandCompanionLinkClient;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.continuitycapture.rapportsideband", v10);
    [(RPCompanionLinkClient *)rpSidebandCompanionLinkClient setDispatchQueue:v11];

    [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient setInvalidationHandler:v5];
    [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient setInterruptionHandler:v6];
    [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient setErrorFlagsChangedHandler:v8];
    [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient setServiceType:ContinuityCaptureRapportSidebandServiceType];
    [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient setControlFlags:[(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient controlFlags]| 0x180000012006];
    v12 = self->_rpSidebandCompanionLinkClient;
    v13 = ContinuityCaptureSidebandSessionEventID;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000E0C4;
    v18[3] = &unk_10001CE20;
    objc_copyWeak(&v19, buf);
    [(RPCompanionLinkClient *)v12 registerEventID:v13 options:0 handler:v18];
    v14 = self->_rpSidebandCompanionLinkClient;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000EF54;
    v16[3] = &unk_10001C8A8;
    objc_copyWeak(&v17, buf);
    [(RPCompanionLinkClient *)v14 activateWithCompletion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
  return v7 != 0;
}

- (void)setupDisplayServer
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2080;
    v28 = "[CMContinuityCaptureDServer setupDisplayServer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F388;
  block[3] = &unk_10001C6E0;
  objc_copyWeak(&v24, buf);
  v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000F588;
  v20[3] = &unk_10001C998;
  objc_copyWeak(&v22, buf);
  v5 = v4;
  v21 = v5;
  v6 = objc_retainBlock(v20);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000F744;
  v18[3] = &unk_10001C6E0;
  objc_copyWeak(&v19, buf);
  v7 = objc_retainBlock(v18);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000F7D0;
  v16[3] = &unk_10001CE88;
  objc_copyWeak(&v17, buf);
  v8 = objc_retainBlock(v16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F954;
  v13[3] = &unk_10001CED0;
  objc_copyWeak(&v15, buf);
  v9 = v5;
  v14 = v9;
  v10 = objc_retainBlock(v13);
  v11 = objc_alloc_init(RPRemoteDisplayServer);
  rpDisplayServer = self->_rpDisplayServer;
  self->_rpDisplayServer = v11;

  [(RPRemoteDisplayServer *)self->_rpDisplayServer setServiceType:ContinuityCaptureRapportServiceType];
  [(RPRemoteDisplayServer *)self->_rpDisplayServer setInterruptionHandler:v6];
  [(RPRemoteDisplayServer *)self->_rpDisplayServer setInvalidationHandler:v7];
  [(RPRemoteDisplayServer *)self->_rpDisplayServer setDispatchQueue:self->_queue];
  [(RPRemoteDisplayServer *)self->_rpDisplayServer setSessionStartHandler:v8];
  [(RPRemoteDisplayServer *)self->_rpDisplayServer setSessionEndedHandler:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)setupBoracay
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureDServer setupBoracay]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
  }

  objc_initWeak(&v8, self);
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = objc_alloc_init(MPAVRoutingController);
      avRoutingController = self->_avRoutingController;
      self->_avRoutingController = v4;

      [(MPAVRoutingController *)self->_avRoutingController setDelegate:self];
    }

    else
    {
      v6 = [[MRGroupSessionDiscovery alloc] initWithDelegate:self];
      groupSessionDiscovery = self->_groupSessionDiscovery;
      self->_groupSessionDiscovery = v6;
    }
  }

  objc_destroyWeak(&v8);
}

- (void)leaveWranglerIfActive
{
  if (_os_feature_enabled_impl())
  {
    dispatch_assert_queue_V2(self->_queue);
    if (_os_feature_enabled_impl())
    {
      [(CMContinuityCaptureDServer *)self _endpointToMediaRemoteIdentifier:0 completion:0];
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      identifier = [(MRGroupSession *)selfCopy->_activeGroupSession identifier];
      objc_sync_exit(selfCopy);

      groupSessionRequestUUID = selfCopy->_groupSessionRequestUUID;
      selfCopy->_groupSessionRequestUUID = 0;

      v6 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v9 = selfCopy;
        v10 = 2112;
        v11 = identifier;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Leaving wrangler session with identifier %@", buf, 0x16u);
      }

      if (identifier)
      {
        MRGroupSessionLeaveSessionWithIdentifier();
      }
    }

    localParticipantInfo = self->_localParticipantInfo;
    self->_localParticipantInfo = 0;
  }
}

- (void)lockScreenLayoutMonitor:(id)monitor didUpdateLayoutWithShieldFrontMost:(BOOL)most lockscreenInLayout:(BOOL)layout
{
  layoutCopy = layout;
  objc_initWeak(&location, self);
  if (layoutCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FF0C;
    block[3] = &unk_10001CCB8;
    objc_copyWeak(&v10, &location);
    mostCopy = most;
    dispatch_async(queue, block);
    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)groupSessionDiscovery:(id)discovery activeSessionDidChange:(id)change
{
  changeCopy = change;
  v6 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = changeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ discovery active session did change: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001020C;
  v9[3] = &unk_10001C8F8;
  v10 = changeCopy;
  selfCopy2 = self;
  v8 = changeCopy;
  dispatch_async(queue, v9);
}

- (void)groupSessionDiscovery:(id)discovery discoveredSessionsDidChange:(id)change
{
  changeCopy = change;
  v6 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = changeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ discovery session did change with discovered sessions: %@", &v7, 0x16u);
  }
}

- (void)groupSessionDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = connectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ group session did connect: session %@", &v6, 0x16u);
  }
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ group session %@ did invalidate with error: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010504;
  block[3] = &unk_10001C808;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)groupSession:(id)session didUpdateParticipants:(id)participants
{
  sessionCopy = session;
  participantsCopy = participants;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = participantsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ group session: session %@ did update participants %@", &v9, 0x20u);
  }
}

- (void)groupSession:(id)session didUpdateMembers:(id)members
{
  sessionCopy = session;
  membersCopy = members;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = membersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ group session: session %@ did update members %@", &v19, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [CMContinuityCaptureParticipantInfo alloc];
    localParticipant = [sessionCopy localParticipant];
    v11 = [v9 initWithMRParticipant:localParticipant];
    v12 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession = [v12 activeSession];
    configuration = [activeSession configuration];
    [configuration setParticipantInfo:v11];

    v15 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v16 = +[CCDShieldUILifeCycleManager sharedInstance];
    activeSession2 = [v16 activeSession];
    configuration2 = [activeSession2 configuration];
    [v15 updateClientsWithConfiguration:configuration2];
  }
}

- (void)routingController:(id)controller pickedRouteDidChange:(id)change
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100010840;
  v4[3] = &unk_10001CF20;
  v4[4] = self;
  [MPAVRoutingController getActiveRouteWithCompletion:v4, change];
}

- (CMContinuityCaptureDServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = CMContinuityCaptureDServer;
  v6 = [(CMContinuityCaptureDServer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_checkLastUserPressedPauseState = 1;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.continuitycapture.shieldlaunch", v8);
    shieldLaunchCheckQueue = v7->_shieldLaunchCheckQueue;
    v7->_shieldLaunchCheckQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.continuitycapture.sidebandMessageQueue", v11);
    sidebandMessageQueue = v7->_sidebandMessageQueue;
    v7->_sidebandMessageQueue = v12;

    v14 = +[CCDShieldUILifeCycleManager sharedInstance];
    [v14 addObserver:v7 forKeyPath:@"activeSession" options:3 context:0];

    v15 = objc_alloc_init(NSMutableArray);
    sessionsPendingActivation = v7->_sessionsPendingActivation;
    v7->_sessionsPendingActivation = v15;

    objc_initWeak(&location, v7);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100004DE0;
    v23 = &unk_10001C6E0;
    objc_copyWeak(&v24, &location);
    dispatch_async(&_dispatch_main_q, &v20);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    atomic_store(1u, &v7->_observingActiveKVOs);
    v17 = objc_alloc_init(CMContinuityCaptureLockScreenLayoutMonitor);
    lockScreenLayoutMonitor = v7->_lockScreenLayoutMonitor;
    v7->_lockScreenLayoutMonitor = v17;

    [(CMContinuityCaptureLockScreenLayoutMonitor *)v7->_lockScreenLayoutMonitor setDelegate:v7, v20, v21, v22, v23];
    [(CMContinuityCaptureDServer *)v7 setupRPRemoteDisplayDiscovery];
    [(CMContinuityCaptureDServer *)v7 setupDisplayServer];
    [(CMContinuityCaptureDServer *)v7 setupSidebandRPClient];
    [(CMContinuityCaptureDServer *)v7 setupBoracay];
  }

  return v7;
}

- (void)teardownSession
{
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rpServer = self->_rpServer;
    *buf = 138543874;
    selfCopy2 = self;
    v44 = 2080;
    v45 = "[CMContinuityCaptureDServer teardownSession]";
    v46 = 2112;
    v47 = rpServer;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v5 = self->_rpServer;
  if (v5)
  {
    compositeDevice = [(CMContinuityCaptureRapportServer *)v5 compositeDevice];

    if (compositeDevice)
    {
      localDevice = [(CMContinuityCaptureRapportServer *)self->_rpServer localDevice];
      deviceIdentifier = [localDevice deviceIdentifier];
      uUIDString = [deviceIdentifier UUIDString];

      currentSessionID = [(CMContinuityCaptureRapportServer *)self->_rpServer currentSessionID];
      v11 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession = [v11 activeSession];
      configuration = [activeSession configuration];
      clientDeviceModel = [configuration clientDeviceModel];

      compositeDevice2 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      queue = [compositeDevice2 queue];
      dispatch_assert_queue_not_V2(queue);

      compositeDevice3 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      queue2 = [compositeDevice3 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A8BC;
      block[3] = &unk_10001C808;
      block[4] = self;
      dispatch_async_and_wait(queue2, block);

      [(CMContinuityCaptureRapportServer *)self->_rpServer removeObserver:self forKeyPath:CMContinuityCaptureRemoteStreamPreStartConfigKVOKey context:0];
      [CMContinuityCaptureRemoteCompositeDevice setWombatMode:0];
      sessionClearOutBlock = self->_sessionClearOutBlock;
      if (sessionClearOutBlock)
      {
        dispatch_block_cancel(sessionClearOutBlock);
        v20 = self->_sessionClearOutBlock;
        self->_sessionClearOutBlock = 0;
      }

      compositeDevice4 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      [compositeDevice4 invalidate];

      [(CMContinuityCaptureRapportServer *)self->_rpServer cancel];
      v22 = self->_rpServer;
      self->_rpServer = 0;

      connectedRPDisplaySession = self->_connectedRPDisplaySession;
      self->_connectedRPDisplaySession = 0;

      v24 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession2 = [v24 activeSession];
      pauseStateSolver = [activeSession2 pauseStateSolver];
      [pauseStateSolver saveUserPauseState:0];

      v27 = +[CCDShieldUILifeCycleManager sharedInstance];
      activeSession3 = [v27 activeSession];

      if (activeSession3)
      {
        v29 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession4 = [v29 activeSession];
        configuration2 = [activeSession4 configuration];
        [configuration2 setCompositeState:0];

        v32 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v33 = +[CCDShieldUILifeCycleManager sharedInstance];
        activeSession5 = [v33 activeSession];
        configuration3 = [activeSession5 configuration];
        [v32 updateClientsWithConfiguration:configuration3];
      }

      v36 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v44 = 2114;
        v45 = uUIDString;
        v46 = 2048;
        v47 = currentSessionID;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ teardown session event for %{public}@ currentSessionID %llx", buf, 0x20u);
      }

      v39[0] = ContinuityCaptureRapportClientMessageTypeKey;
      v39[1] = ContinuityCaptureRapportClientTransportSessionIDKey;
      v40[0] = &off_10001D388;
      v37 = [NSNumber numberWithUnsignedLongLong:currentSessionID];
      v40[1] = v37;
      v38 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      [(CMContinuityCaptureDServer *)self relayMessage:v38 toDeviceWithIdentifier:uUIDString andModel:clientDeviceModel];
    }
  }
}

@end