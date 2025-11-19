@interface CMContinuityCaptureDServer
+ (id)sessionIdentifier:(id)a3;
- (BOOL)activeCallSession;
- (BOOL)setupSidebandRPClient;
- (CMContinuityCaptureDServer)initWithQueue:(id)a3;
- (void)_checkMusicAccount:(id)a3;
- (void)_endpointToMediaRemoteIdentifier:(id)a3 completion:(id)a4;
- (void)_exitSessionIfApplicableForDeviceIdentifier:(id)a3 exitReason:(id)a4;
- (void)_fetchLocalParticipantInfo:(id)a3;
- (void)_joinGroupSessionRequestFinishedWithSessionIdentifier:(id)a3 requestID:(id)a4 error:(id)a5;
- (void)_joinGroupSessionWithURLString:(id)a3;
- (void)_launchShieldUIForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_relayMessage:(id)a3 toDeviceWithIdentifier:(id)a4 andModel:(int64_t)a5;
- (void)_resolveUserPauseState;
- (void)_skipPlacementStepIfApplicable;
- (void)_teardownShieldUI;
- (void)_teardownSingShieldUIIfNeeded;
- (void)_updateLocalParticipantInfo;
- (void)activate;
- (void)callActive:(BOOL)a3;
- (void)cancel;
- (void)createSession:(id)a3;
- (void)dealloc;
- (void)disconnectSession:(BOOL)a3 reason:(id)a4;
- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)groupSession:(id)a3 didUpdateMembers:(id)a4;
- (void)groupSession:(id)a3 didUpdateParticipants:(id)a4;
- (void)groupSessionDidConnect:(id)a3;
- (void)groupSessionDiscovery:(id)a3 activeSessionDidChange:(id)a4;
- (void)groupSessionDiscovery:(id)a3 discoveredSessionsDidChange:(id)a4;
- (void)incomingCall:(BOOL)a3 data:(id)a4 shouldDisplayNotification:(BOOL)a5;
- (void)invalidateCurrentSession;
- (void)launchShieldUIForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8;
- (void)leaveWranglerIfActive;
- (void)lockScreenLayoutMonitor:(id)a3 didUpdateLayoutWithShieldFrontMost:(BOOL)a4 lockscreenInLayout:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseSessionForEvent:(int64_t)a3;
- (void)postCameraCapabilitiesToDeviceWithIdentifier:(id)a3 andModel:(int64_t)a4;
- (void)postEvent:(id)a3 toDeviceWithIdentifier:(id)a4;
- (void)postEvent:(id)a3 toSession:(id)a4;
- (void)prepareForPullConversation:(id)a3;
- (void)refreshPrivacyAcknowledgement;
- (void)relayMessage:(id)a3 toDeviceWithIdentifier:(id)a4 andModel:(int64_t)a5;
- (void)requestContinuityCaptureUIConfiguration:(id)a3;
- (void)resetCurrentSession:(id)a3 added:(BOOL)a4 completion:(id)a5;
- (void)resumeStreamingForEvent:(int64_t)a3;
- (void)routingController:(id)a3 pickedRouteDidChange:(id)a4;
- (void)setupBoracay;
- (void)setupDisplayServer;
- (void)setupRPRemoteDisplayDiscovery;
- (void)setupSingSessionFromURL:(id)a3 remoteDisplayIdentifier:(id)a4;
- (void)setupSingSessionWithMediaRouteIdentifier:(id)a3 remoteDisplayIdentifier:(id)a4;
- (void)shieldDidConnect:(id *)a3;
- (void)shieldDidDisconnect;
- (void)skipPlacementStep;
- (void)teardownSession;
- (void)teardownShieldUI;
- (void)updateSystemStateForDeviceIdentifier:(id)a3 andModel:(int64_t)a4;
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

- (void)requestContinuityCaptureUIConfiguration:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer requestContinuityCaptureUIConfiguration:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", &v9, 0x16u);
  }

  v6 = +[CCDShieldUILifeCycleManager sharedInstance];
  v7 = [v6 activeSession];
  v8 = [v7 configuration];
  v4[2](v4, v8);
}

- (void)resumeStreamingForEvent:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer resumeStreamingForEvent:]";
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s event %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000513C;
  v7[3] = &unk_10001C920;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  dispatch_async(queue, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)pauseSessionForEvent:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005290;
  v6[3] = &unk_10001C948;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  v6[4] = self;
  dispatch_async(queue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)disconnectSession:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = +[CCDShieldUILifeCycleManager sharedInstance];
  v8 = [v7 activeSession];

  v9 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v20 = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDServer disconnectSession:reason:]";
    v23 = 2114;
    v24 = v6;
    v25 = 1024;
    v26 = v4;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s reason %{public}@ relayMessage %d activeSession %{public}@", buf, 0x30u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005634;
  block[3] = &unk_10001C970;
  objc_copyWeak(&v17, &location);
  v14 = v8;
  v15 = self;
  v16 = v6;
  v18 = v4;
  v11 = v6;
  v12 = v8;
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
    v8 = self;
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

- (void)prepareForPullConversation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
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
  v9 = v4;
  v7 = v4;
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
    v6 = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureDServer refreshPrivacyAcknowledgement]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:ICUserIdentityStoreDidChangeNotification object:0];
}

- (void)setupSingSessionFromURL:(id)a3 remoteDisplayIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v17 = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureDServer setupSingSessionFromURL:remoteDisplayIdentifier:]";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F70;
  block[3] = &unk_10001C9C0;
  objc_copyWeak(&v15, &location);
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setupSingSessionWithMediaRouteIdentifier:(id)a3 remoteDisplayIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v16 = self;
    v17 = 2080;
    v18 = "[CMContinuityCaptureDServer setupSingSessionWithMediaRouteIdentifier:remoteDisplayIdentifier:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000636C;
  block[3] = &unk_10001CA38;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)_joinGroupSessionWithURLString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer _joinGroupSessionWithURLString:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000067D4;
  v7[3] = &unk_10001CA10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CMContinuityCaptureDServer *)self _checkMusicAccount:v7];
}

- (void)_joinGroupSessionRequestFinishedWithSessionIdentifier:(id)a3 requestID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = self->_groupSessionRequestUUID;
  groupSessionRequestUUID = self->_groupSessionRequestUUID;
  self->_groupSessionRequestUUID = 0;

  if ([(NSUUID *)v11 isEqual:v9])
  {
    v13 = CMContinuityCaptureLog();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543874;
        v16 = self;
        v17 = 2114;
        v18 = v10;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ failed to join MRGroupSession with error: %{public}@ requestID: %@", &v15, 0x20u);
      }

      v14 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
      [v14 presentShieldError:1 userInfo:0];
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = self;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully joined MRGroupSession: %{public}@ requestID: %@", &v15, 0x20u);
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138544386;
      v16 = self;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ join group session request finished for a different request ID (requestID: %@, currentRequestID: %@) result identifier: %@ error: %@", &v15, 0x34u);
    }
  }
}

- (void)_endpointToMediaRemoteIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempting to endpoint to %@", buf, 0xCu);
  }

  v9 = [v6 copy];
  singSessionMediaRemoteIdentifier = self->_singSessionMediaRemoteIdentifier;
  self->_singSessionMediaRemoteIdentifier = v9;

  if (v6)
  {
    v11 = v6;
    v12 = @"connect continuity sing";
  }

  else
  {
    v13 = [(RPCompanionLinkClient *)self->_rpSidebandCompanionLinkClient localDevice];
    v11 = [v13 mediaRemoteIdentifier];

    v12 = @"disconnect continuity sing";
  }

  v14 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v11 reason:v12];
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006F20;
  v18[3] = &unk_10001CAB0;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v16 = v7;
  v17 = v6;
  [v14 perform:queue completion:v18];
}

- (void)_checkMusicAccount:(id)a3
{
  v4 = a3;
  v5 = +[ICMediaUserStateCenter shared];
  v6 = [v5 activeUserState];

  if (v6)
  {
    v7 = +[ICPrivacyInfo sharedPrivacyInfo];
    v8 = [v7 privacyAcknowledgementRequiredForMusic];

    v9 = +[ICMediaUserStateCenter shared];
    v10 = [v9 activeUserState];
    v11 = [v10 music];
    v12 = [v11 userProfile];
    v13 = [v12 displayNameAccepted];

    v14 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = self;
      v31 = 1024;
      v32 = v8 ^ 1;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved music account state hasAcceptedPrivacyAck:%d hasAcceptedDisplayName:%d", buf, 0x18u);
    }

    if (v8)
    {
      v15 = 2;
    }

    else if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    v4[2](v4, v15);
  }

  else
  {
    v16 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to get ICMediaUser activeUserState, reloading", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17 = [MSVBlockGuard alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000073B4;
    v26[3] = &unk_10001CAD8;
    objc_copyWeak(&v28, buf);
    v18 = v4;
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
    v7 = self;
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

- (void)_fetchLocalParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = self;
    v27 = 2080;
    v28 = "[CMContinuityCaptureDServer _fetchLocalParticipantInfo:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  v6 = +[ICMediaUserStateCenter shared];
  v7 = [v6 activeUserState];

  if (v7)
  {
    v8 = [v7 music];
    v9 = [v8 userProfile];

    v10 = [v9 socialProfile];

    if (v10)
    {
      v11 = [v9 socialProfile];
      v12 = [v11 name];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v9 name];
      }

      v18 = v14;

      v19 = [CMContinuityCaptureParticipantInfo alloc];
      v20 = [v9 socialProfile];
      v21 = [v20 socialProfileID];
      v22 = [v19 initWithSocialProfileIdentifier:v21 displayName:v18];

      v4[2](v4, v22);
    }

    else
    {
      v17 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100011A30();
      }

      v4[2](v4, 0);
    }
  }

  else
  {
    v15 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ unable to get ICMediaUser activeUserState, reloading", buf, 0xCu);
    }

    v16 = +[ICMediaUserStateCenter shared];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007DD4;
    v23[3] = &unk_10001CBA0;
    v23[4] = self;
    v24 = v4;
    [v16 refreshUserStatesWithCompletion:v23];

    v9 = v24;
  }
}

- (void)postCameraCapabilitiesToDeviceWithIdentifier:(id)a3 andModel:(int64_t)a4
{
  v6 = a3;
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

  v8 = [v19[5] dictionaryRepresentation];
  if (v8)
  {
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ capabilities dispatched to %{public}@", buf, 0x16u);
    }

    v11[0] = ContinuityCaptureRapportClientMessageTypeKey;
    v11[1] = ContinuityCaptureRapportClientEventCapabilitiesPayloadKey;
    v12[0] = &off_10001D370;
    v12[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(CMContinuityCaptureDServer *)self relayMessage:v10 toDeviceWithIdentifier:v6 andModel:a4];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)postEvent:(id)a3 toDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ event %{public}@ dispatch event to %{public}@", buf, 0x20u);
  }

  v10[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v10[1] = ContinuityCaptureRapportClientEventNameKey;
  v11[0] = &off_10001D358;
  v11[1] = v6;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(CMContinuityCaptureDServer *)self relayMessage:v9 toDeviceWithIdentifier:v7 andModel:0];
}

- (void)relayMessage:(id)a3 toDeviceWithIdentifier:(id)a4 andModel:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  sidebandMessageQueue = self->_sidebandMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008414;
  block[3] = &unk_10001CBF0;
  objc_copyWeak(v16, &location);
  v14 = v8;
  v15 = v9;
  v16[1] = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(sidebandMessageQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_relayMessage:(id)a3 toDeviceWithIdentifier:(id)a4 andModel:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_sidebandMessageQueue);
  v10 = dispatch_get_global_queue(2, 0);
  v11 = dispatch_semaphore_create(0);
  v12 = objc_alloc_init(RPCompanionLinkDevice);
  [v12 setIdentifier:v9];
  v13 = objc_alloc_init(RPCompanionLinkClient);
  [v13 setDispatchQueue:v10];
  v14 = [v13 controlFlags];
  if (a5 == 1)
  {
    v15 = 65542;
  }

  else
  {
    v15 = 0x180000010006;
  }

  [v13 setControlFlags:v14 | v15];
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
    v34 = a5;
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
    v23 = v8;
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

- (void)shieldDidConnect:(id *)a3
{
  v4 = +[CCDShieldUILifeCycleManager sharedInstance];
  v5 = *&a3->var0[4];
  v6[0] = *a3->var0;
  v6[1] = v5;
  [v4 shieldDidConnect:v6];
}

- (void)incomingCall:(BOOL)a3 data:(id)a4 shouldDisplayNotification:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v9 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v18 = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureDServer incomingCall:data:shouldDisplayNotification:]";
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s status %d shouldDisplayNotification: %d", buf, 0x22u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008EF8;
  block[3] = &unk_10001CC90;
  objc_copyWeak(&v14, &location);
  v15 = v6;
  v13 = v8;
  v16 = v5;
  v11 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)callActive:(BOOL)a3
{
  v3 = a3;
  v5 = +[CCDShieldUILifeCycleManager sharedInstance];
  v6 = [v5 activeSession];
  if (v6)
  {
    v7 = v6;
    v8 = +[CCDShieldUILifeCycleManager sharedInstance];
    v9 = [v8 activeSession];
    v10 = [v9 configuration];
    v11 = [v10 clientDeviceModel];

    if (v11 == 2)
    {
      v12 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v20 = self;
        v21 = 2080;
        v22 = "[CMContinuityCaptureDServer callActive:]";
        v23 = 1024;
        v24 = v3;
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
    v20 = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDServer callActive:]";
    v23 = 1024;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ %s status %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000927C;
  block[3] = &unk_10001CCB8;
  objc_copyWeak(&v16, &location);
  v17 = v3;
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
    v13 = self;
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

- (void)launchShieldUIForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000097F4;
  v19[3] = &unk_10001CCE0;
  objc_copyWeak(v22, &location);
  v20 = v14;
  v21 = v15;
  v22[1] = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(queue, v19);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)_launchShieldUIForDeviceIdentifier:(id)a3 name:(id)a4 model:(int64_t)a5 skipPlacementStep:(BOOL)a6 isDedicated:(BOOL)a7 micOnly:(BOOL)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v16 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v28 = self;
    v29 = 2080;
    v30 = "[CMContinuityCaptureDServer _launchShieldUIForDeviceIdentifier:name:model:skipPlacementStep:isDedicated:micOnly:]";
    v31 = 2114;
    v32 = v14;
    v33 = 1024;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ %s identifier %{public}@ skipPlacementStep %d", buf, 0x26u);
  }

  shieldLaunchCheckQueue = self->_shieldLaunchCheckQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009A14;
  block[3] = &unk_10001CCE0;
  objc_copyWeak(v23, &location);
  v23[1] = a5;
  v24 = v10;
  v25 = a8;
  v21 = v14;
  v22 = v15;
  v26 = a7;
  v18 = v15;
  v19 = v14;
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
  v4 = [v3 activeSession];

  if (v4)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2080;
      v15 = "[CMContinuityCaptureDServer _teardownShieldUI]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    v6 = +[CCDShieldUILifeCycleManager sharedInstance];
    v7 = [v6 activeSession];
    v8 = [v7 pauseStateSolver];
    [v8 saveUserPauseState:0];

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
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureDServer _teardownSingShieldUIIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v9, 0x16u);
  }

  v4 = +[CCDShieldUILifeCycleManager sharedInstance];
  v5 = [v4 activeSession];
  v6 = [v5 configuration];

  if (_os_feature_enabled_impl() && [v6 micOnly])
  {
    dispatch_assert_queue_V2(self->_queue);
    v7 = self;
    objc_sync_enter(v7);
    if (v7->_activeGroupSession || v7->_inLagunaSession)
    {
      objc_sync_exit(v7);
    }

    else
    {
      singSessionMediaRemoteIdentifier = v7->_singSessionMediaRemoteIdentifier;
      objc_sync_exit(v7);

      if (!singSessionMediaRemoteIdentifier)
      {
        [(CMContinuityCaptureDServer *)v7 _teardownShieldUI];
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

- (void)createSession:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_rpServer)
  {
    v5 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ skip create session", buf, 0xCu);
    }
  }

  else
  {
    [CMContinuityCaptureRemoteCompositeDevice setWombatMode:1];
    v5 = [CMContinuityCaptureDServer sessionIdentifier:v4];
    v6 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery dedicatedDevice];
    v7 = [v6 idsDeviceIdentifier];
    v8 = [v7 isEqual:v5];

    v9 = voucher_copy();
    v10 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v19 = self;
      v20 = 2114;
      v21 = v4;
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
    v13 = [v11 initWithRapportDisplaySession:v4 queue:queue voucher:v9 incomingStreamRequestHandler:v17];
    rpServer = self->_rpServer;
    self->_rpServer = v13;

    v15 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];

    if (v15)
    {
      v16 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      [v16 addObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey options:3 context:0];

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

+ (id)sessionIdentifier:(id)a3
{
  v5 = a3;
  v6 = [v5 destinationDevice];
  v7 = [v6 idsDeviceIdentifier];
  if (v7 && ([v5 destinationDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "idsDeviceIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "length")))
  {
    v8 = [v5 destinationDevice];
    v9 = [v8 idsDeviceIdentifier];
  }

  else
  {
    v10 = [v5 destinationDevice];
    v9 = [v10 identifier];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_10001D200;
  }

  return v11;
}

- (void)postEvent:(id)a3 toSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v16[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v16[1] = ContinuityCaptureRapportClientEventNameKey;
  v17[0] = &off_10001D370;
  v17[1] = v6;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v9 = ContinuityCaptureSessionEventID;
  v10 = RPDestinationIdentifierDirectPeer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B040;
  v12[3] = &unk_10001CD58;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  objc_copyWeak(&v15, &from);
  [v7 sendEventID:v9 event:v8 destinationID:v10 options:0 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)resetCurrentSession:(id)a3 added:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = a3;
  v10 = a5;
  v11 = [CMContinuityCaptureDServer sessionIdentifier:v9];
  v12 = [v9 destinationDevice];
  v13 = [v12 model];
  v14 = CMContinuityCaptureDeviceModelFromModelString();

  v15 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery dedicatedDevice];
  v16 = [v15 idsDeviceIdentifier];
  v97 = [v16 isEqual:v11];

  v17 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    rpServer = self->_rpServer;
    connectedRPDisplaySession = self->_connectedRPDisplaySession;
    *buf = 138544898;
    v99 = self;
    v100 = 2080;
    v101 = "[CMContinuityCaptureDServer resetCurrentSession:added:completion:]";
    v102 = 2114;
    v103 = rpServer;
    v104 = 2114;
    v105 = connectedRPDisplaySession;
    v106 = 2114;
    v107 = v9;
    v108 = 1024;
    v109 = v6;
    v110 = 2114;
    v111 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %s rpServer %{public}@ _connectedRPDisplaySession %{public}@ resetSession %{public}@ added %d destinationDeviceIdentifier %{public}@", buf, 0x44u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!FigContinuityCaptureGetUserPreferenceDisabled() || !v6)
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

      v23 = [(CMContinuityCaptureRapportServer *)v22 displaySession];
      v24 = [v23 isEqual:v9];

      if (v24)
      {
        v25 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v99 = self;
          v100 = 2114;
          v101 = v9;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidate current session %{public}@", buf, 0x16u);
        }

        v26 = self->_connectedRPDisplaySession;
        self->_connectedRPDisplaySession = 0;

        [(CMContinuityCaptureDServer *)self invalidateCurrentSession];
        if (![(NSMutableArray *)self->_sessionsPendingActivation count])
        {
          goto LABEL_77;
        }

        v27 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
        v28 = [CMContinuityCaptureDServer sessionIdentifier:v27];
        v29 = [v28 isEqualToString:v11];

        if (v29)
        {
          v30 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
            *buf = 138544130;
            v99 = self;
            v100 = 2114;
            v101 = v11;
            v102 = 2114;
            v103 = v9;
            v104 = 2114;
            v105 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset (from pending activation) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
          }

          v32 = self->_rpServer;
          v33 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          [(CMContinuityCaptureRapportServer *)v32 resetDisplaySession:v33];

          v34 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          v35 = self->_connectedRPDisplaySession;
          self->_connectedRPDisplaySession = v34;

LABEL_76:
          [(NSMutableArray *)self->_sessionsPendingActivation removeObjectAtIndex:0];
          goto LABEL_77;
        }

        if (!self->_sessionClearOutBlock)
        {
          v75 = CMContinuityCaptureLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
            *buf = 138543618;
            v99 = self;
            v100 = 2114;
            v101 = v76;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection (from pending activation) %{public}@", buf, 0x16u);
          }

          v77 = +[CCDShieldUILifeCycleManager sharedInstance];
          v78 = [v77 activeSession];
          if (v78)
          {
            v79 = v78;
            v80 = +[CCDShieldUILifeCycleManager sharedInstance];
            v81 = [v80 activeSession];
            [v81 configuration];
            v83 = v82 = v10;
            v84 = v9;
            v85 = v11;
            v86 = [v83 clientDeviceModel];

            v10 = v82;
            v87 = v86 == 2;
            v11 = v85;
            v9 = v84;
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
          v92 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
          [(CMContinuityCaptureDServer *)self postEvent:v91 toSession:v92];

          goto LABEL_76;
        }

LABEL_77:
        v10[2](v10);
        [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
        goto LABEL_78;
      }

      if (*p_connectedRPDisplaySession)
      {
        goto LABEL_21;
      }
    }

    v36 = self->_rpServer;
    if (!v36 || (-[CMContinuityCaptureRapportServer displaySession](v36, "displaySession"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isEqual:v9], v37, (v38 & 1) != 0))
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

        v40 = [(CMContinuityCaptureRapportServer *)v39 displaySession];
        v41 = [v40 isEqual:v9];

        if (v41)
        {
          goto LABEL_24;
        }

        if (v6)
        {
          v54 = v7;
          v55 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
          v56 = [CMContinuityCaptureDServer sessionIdentifier:v55];
          v57 = [v56 isEqualToString:v11];

          v58 = CMContinuityCaptureLog();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          if (v57)
          {
            if (v59)
            {
              v60 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
              *buf = 138544130;
              v99 = self;
              v100 = 2114;
              v101 = v11;
              v102 = 2114;
              v103 = v60;
              v104 = 2114;
              v105 = v9;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset ((ongoing session) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
            }

            [(CMContinuityCaptureDServer *)self invalidateCurrentSession];
            [(CMContinuityCaptureRapportServer *)self->_rpServer resetDisplaySession:v9];
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
            v99 = self;
            v100 = 2114;
            v101 = v9;
            v102 = 2114;
            v103 = v89;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@ (ongoing session: %{public}@)", buf, 0x20u);
          }

          goto LABEL_72;
        }

        if (![(NSMutableArray *)self->_sessionsPendingActivation containsObject:v9])
        {
          goto LABEL_77;
        }

        v50 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v73 = self->_connectedRPDisplaySession;
          *buf = 138543874;
          v99 = self;
          v100 = 2114;
          v101 = v9;
          v102 = 2114;
          v103 = v73;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection removed %{public}@ (ongoing session: %{public}@)", buf, 0x20u);
        }

        goto LABEL_67;
      }

      obj = v7;
      v43 = +[CCDShieldUILifeCycleManager sharedInstance];
      v44 = [v43 activeSession];
      if (v44)
      {
        v45 = v44;
        v46 = +[CCDShieldUILifeCycleManager sharedInstance];
        [v46 activeSession];
        v94 = v9;
        v48 = v47 = v10;
        v49 = [v48 deviceIdentifier];
        v93 = [v49 isEqualToString:v11];

        v10 = v47;
        v9 = v94;

        if ((v93 & 1) == 0)
        {
          v50 = CMContinuityCaptureLog();
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
          if (v6)
          {
            if (v51)
            {
              v52 = +[CCDShieldUILifeCycleManager sharedInstance];
              v53 = [v52 activeSession];
              *buf = 138543874;
              v99 = self;
              v100 = 2114;
              v101 = v53;
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

          v74 = +[CCDShieldUILifeCycleManager sharedInstance];
          v88 = [v74 activeSession];
          *buf = 138543874;
          v99 = self;
          v100 = 2114;
          v101 = v88;
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
      if (!v39 && v6)
      {
        v69 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v99 = self;
          v100 = 2114;
          v101 = v9;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@", buf, 0x16u);
        }

        v70 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery discoverySessionStartReason]== 3;
        v71 = [v9 destinationDevice];
        v72 = [v71 name];
        [(CMContinuityCaptureDServer *)self launchShieldUIForDeviceIdentifier:v11 name:v72 model:v96 skipPlacementStep:v96 != 2 isDedicated:v97 micOnly:v70];

        [(CMContinuityCaptureDServer *)self createSession:v9];
        v61 = &self->_connectedRPDisplaySession;
        v62 = obj;
        goto LABEL_49;
      }

      v7 = obj;
      if (!v39)
      {
LABEL_24:
        v42 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v99 = self;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Unknown case", buf, 0xCu);
        }

        goto LABEL_77;
      }

      goto LABEL_22;
    }

    if (v6)
    {
      v63 = v10;
      v64 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
      v65 = [CMContinuityCaptureDServer sessionIdentifier:v64];
      v66 = [v65 isEqualToString:v11];

      v58 = CMContinuityCaptureLog();
      v67 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        v10 = v63;
        if (v67)
        {
          v68 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
          *buf = 138544130;
          v99 = self;
          v100 = 2114;
          v101 = v11;
          v102 = 2114;
          v103 = v68;
          v104 = 2114;
          v105 = v9;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Reset (with pending termination) for %{public}@ (%{public}@ -> %{public}@)", buf, 0x2Au);
        }

        [(CMContinuityCaptureRapportServer *)self->_rpServer resetDisplaySession:v9];
        v61 = &self->_connectedRPDisplaySession;
        v62 = v7;
        goto LABEL_49;
      }

      v10 = v63;
      if (v67)
      {
        v90 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
        *buf = 138543874;
        v99 = self;
        v100 = 2114;
        v101 = v9;
        v102 = 2114;
        v103 = v90;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ New Connection %{public}@ (with pending termination %{public}@)", buf, 0x20u);
      }

LABEL_72:

LABEL_73:
      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventCaptureSessionStarted toSession:v9];
      [(NSMutableArray *)self->_sessionsPendingActivation addObject:v9];
      goto LABEL_77;
    }

    if (![(NSMutableArray *)self->_sessionsPendingActivation containsObject:v9])
    {
      goto LABEL_77;
    }

    v50 = CMContinuityCaptureLog();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
LABEL_67:

      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventCaptureSessionEnded toSession:v9];
      [(NSMutableArray *)self->_sessionsPendingActivation removeObject:v9];
      goto LABEL_77;
    }

    v74 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
    *buf = 138543874;
    v99 = self;
    v100 = 2114;
    v101 = v9;
    v102 = 2114;
    v103 = v74;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection removed %{public}@ (with pending termination %{public}@)", buf, 0x20u);
LABEL_66:

    goto LABEL_67;
  }

  v20 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v99 = self;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ can't allow connection in user disabled mode", buf, 0xCu);
  }

  [(CMContinuityCaptureDServer *)self _exitSessionIfApplicableForDeviceIdentifier:v11 exitReason:kCMContinuityCaptureSessionExitReasonUserDisabled];
LABEL_78:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000BEA4;
  v17[3] = &unk_10001CD80;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v79 = a4;
  v80 = a5;
  objc_initWeak(&location, self);
  v10 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v86 = self;
    v87 = 2112;
    v88 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ keypath %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([v9 isEqualToString:CMContinuityCaptureRemoteCompositeStateKVOKey])
  {
    v11 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v12 = [v11 integerValue];

    v13 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v86 = self;
      v87 = 2112;
      v88 = v9;
      v89 = 1024;
      v90 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Observe key %@ state %d", buf, 0x1Cu);
    }

    if ((v12 & 0x10) == 0)
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
      v16 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
      *buf = 138543618;
      v86 = self;
      v87 = 2112;
      v88 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ session %@ terminated", buf, 0x16u);
    }

    v17 = [(CMContinuityCaptureRapportServer *)self->_rpServer displaySession];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10000CAB0;
    v83[3] = &unk_10001C6E0;
    objc_copyWeak(&v84, &location);
    [(CMContinuityCaptureDServer *)self resetCurrentSession:v17 added:0 completion:v83];

    v18 = +[CCDShieldUILifeCycleManager sharedInstance];
    v19 = [v18 activeSession];
    if (v19)
    {
      v20 = +[CCDShieldUILifeCycleManager sharedInstance];
      v21 = [v20 activeSession];
      v22 = [v21 configuration];
      v23 = [v22 clientDeviceModel];

      if (v23 != 2)
      {
        [(CMContinuityCaptureDServer *)self teardownShieldUI];
LABEL_33:
        objc_destroyWeak(&v84);
LABEL_34:
        v43 = +[CCDShieldUILifeCycleManager sharedInstance];
        v44 = [v43 activeSession];
        v45 = [v44 configuration];
        [v45 setCompositeState:v12];

        v24 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v29 = +[CCDShieldUILifeCycleManager sharedInstance];
        v30 = [v29 activeSession];
        v46 = [v30 configuration];
        [(CMContinuityCaptureDServer *)v24 updateClientsWithConfiguration:v46];

        goto LABEL_35;
      }
    }

    else
    {
    }

    v12 |= 0x20uLL;
    goto LABEL_33;
  }

  if ([v9 isEqualToString:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey])
  {
    v24 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if (![(CMContinuityCaptureDServer *)v24 BOOLValue])
    {
LABEL_36:

      goto LABEL_37;
    }

    v25 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v86 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %@ power button pressed", buf, 0xCu);
    }

    v26 = +[CCDShieldUILifeCycleManager sharedInstance];
    v27 = [v26 activeSession];
    v28 = [v27 pauseStateSolver];
    [v28 sideButtonPressed];

    [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
    v29 = +[CCDShieldUILifeCycleManager sharedInstance];
    v30 = [v29 activeSession];
    v31 = [v30 pauseStateSolver];
    [v31 sideButtonReleased];

LABEL_35:
    goto LABEL_36;
  }

  if ([v9 isEqualToString:CMContinuityCaptureCallStateKVOKey])
  {
    v24 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if ([(CMContinuityCaptureDServer *)v24 integerValue]== 2)
    {
      v32 = +[CCDShieldUILifeCycleManager sharedInstance];
      v33 = [v32 activeSession];
      v34 = [v33 pauseStateSolver];
      [v34 incomingCallDeclinedStatusUpdated:1];

      [(CMContinuityCaptureDServer *)self _resolveUserPauseState];
      v35 = +[CCDShieldUILifeCycleManager sharedInstance];
      v36 = [v35 activeSession];
      v37 = [v36 pauseStateSolver];
      [v37 incomingCallDeclinedStatusUpdated:0];
    }

    if (([(CMContinuityCaptureDServer *)v24 integerValue]== 2 || [(CMContinuityCaptureDServer *)v24 integerValue]== 1) && [(NSMutableArray *)self->_sessionsPendingActivation count])
    {
      v38 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
        *buf = 138412546;
        v86 = self;
        v87 = 2114;
        v88 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %@ call ended, resume session %{public}@", buf, 0x16u);
      }

      v40 = [(NSMutableArray *)self->_sessionsPendingActivation firstObject];
      [(CMContinuityCaptureDServer *)self postEvent:kCMContinuityCaptureEventStreamDisableForDeviceInUseExit toSession:v40];

      [(NSMutableArray *)self->_sessionsPendingActivation removeObjectAtIndex:0];
    }

    goto LABEL_36;
  }

  if (![v9 isEqualToString:CMContinuityCaptureRemoteStreamPreStartConfigKVOKey])
  {
    goto LABEL_42;
  }

  v41 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v42 = +[NSNull null];
  if ([v41 isEqual:v42])
  {

    goto LABEL_42;
  }

  v47 = [v80 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v48 = +[NSNull null];
  v49 = [v47 isEqual:v48];

  if (!v49)
  {
LABEL_42:
    if (![v9 isEqualToString:@"activeSession"])
    {
      goto LABEL_37;
    }

    v51 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v52 = +[NSNull null];
    if ([v51 isEqual:v52])
    {
      v53 = [v80 objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v54 = +[NSNull null];
      v55 = [v53 isEqual:v54];

      if ((v55 & 1) == 0)
      {
        v56 = CMContinuityCaptureLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [v80 objectForKeyedSubscript:NSKeyValueChangeOldKey];
          *buf = 138412546;
          v86 = self;
          v87 = 2114;
          v88 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " %@ session terminated %{public}@", buf, 0x16u);
        }

        v24 = self;
        objc_sync_enter(v24);
        v24->_inLagunaSession = 0;
        objc_sync_exit(v24);
        goto LABEL_36;
      }
    }

    else
    {
    }

    v24 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v58 = +[NSNull null];
    if ([(CMContinuityCaptureDServer *)v24 isEqual:v58])
    {
    }

    else
    {
      v59 = [v80 objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v60 = +[NSNull null];
      v61 = [v59 isEqual:v60];

      if (!v61)
      {
        goto LABEL_37;
      }

      v62 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v80 objectForKeyedSubscript:NSKeyValueChangeNewKey];
        *buf = 138412546;
        v86 = self;
        v87 = 2114;
        v88 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, " %@ session started %{public}@", buf, 0x16u);
      }

      v64 = self;
      objc_sync_enter(v64);
      v64->_inLagunaSession = 1;
      objc_sync_exit(v64);

      localParticipantInfo = v64->_localParticipantInfo;
      if (localParticipantInfo)
      {
        v66 = +[CCDShieldUILifeCycleManager sharedInstance];
        v67 = [v66 activeSession];
        v68 = [v67 configuration];
        [v68 setParticipantInfo:localParticipantInfo];

        v69 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v70 = +[CCDShieldUILifeCycleManager sharedInstance];
        v71 = [v70 activeSession];
        v72 = [v71 configuration];
        [v69 updateClientsWithConfiguration:v72];
      }

      v81 = ContinuityCaptureRapportClientMessageTypeKey;
      v82 = &off_10001D3A0;
      v24 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v73 = +[CCDShieldUILifeCycleManager sharedInstance];
      v74 = [v73 activeSession];
      v75 = [v74 deviceIdentifier];
      v76 = +[CCDShieldUILifeCycleManager sharedInstance];
      v77 = [v76 activeSession];
      v78 = [v77 configuration];
      -[CMContinuityCaptureDServer relayMessage:toDeviceWithIdentifier:andModel:](v64, "relayMessage:toDeviceWithIdentifier:andModel:", v24, v75, [v78 clientDeviceModel]);
    }

    goto LABEL_36;
  }

  v50 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v86 = self;
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
  v4 = [v3 activeSession];
  v5 = [v4 pauseStateSolver];
  v6 = [v5 resolvePauseState];

  v7 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectedRPDisplaySession = self->_connectedRPDisplaySession;
    v9 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
    v14 = 136315906;
    v15 = "[CMContinuityCaptureDServer _resolveUserPauseState]";
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = connectedRPDisplaySession;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s paused: %d connectedRPDisplaySession %@ compositeDevice %@", &v14, 0x26u);
  }

  if (self->_connectedRPDisplaySession)
  {
    v10 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];

    if (v10)
    {
      v11 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      v12 = v11;
      v13 = &kCMContinuityCaptureEventUserPause;
      if (!v6)
      {
        v13 = &kCMContinuityCaptureEventUserResume;
      }

      [v11 postEvent:*v13 entity:0 data:0];

      [CMContinuityCaptureRemoteCompositeDevice setWombatMode:v6 ^ 1];
    }
  }
}

- (void)_skipPlacementStepIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[CCDShieldUILifeCycleManager sharedInstance];
  v4 = [v3 activeSession];
  v5 = [v4 configuration];
  v6 = [v5 placementStepSkipped];

  if ([v6 isEqualToNumber:&__kCFBooleanFalse])
  {
    v7 = +[CCDShieldUILifeCycleManager sharedInstance];
    v8 = [v7 activeSession];
    v9 = [v8 deviceIdentifier];

    v21 = ContinuityCaptureRapportClientMessageTypeKey;
    v22 = &off_10001D3B8;
    v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = +[CCDShieldUILifeCycleManager sharedInstance];
    v12 = [v11 activeSession];
    v13 = [v12 configuration];
    -[CMContinuityCaptureDServer relayMessage:toDeviceWithIdentifier:andModel:](self, "relayMessage:toDeviceWithIdentifier:andModel:", v10, v9, [v13 clientDeviceModel]);

    v14 = +[CCDShieldUILifeCycleManager sharedInstance];
    v15 = [v14 activeSession];
    v16 = [v15 configuration];
    [v16 setPlacementStepSkipped:&__kCFBooleanTrue];

    v17 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v18 = +[CCDShieldUILifeCycleManager sharedInstance];
    v19 = [v18 activeSession];
    v20 = [v19 configuration];
    [v17 updateClientsWithConfiguration:v20];
  }

  else
  {
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v24 = self;
      v25 = 2080;
      v26 = "[CMContinuityCaptureDServer _skipPlacementStepIfApplicable]";
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s current active session has placementStepSkipped %@. Ignore processing skip placement step", buf, 0x20u);
    }
  }
}

- (void)_exitSessionIfApplicableForDeviceIdentifier:(id)a3 exitReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!v6)
  {
    sub_100011C30(self, v7);
    goto LABEL_7;
  }

  if ([(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery currentState]!= 1)
  {
    v10 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery currentState];
      v15 = 138544386;
      v16 = self;
      v17 = 2080;
      v18 = "[CMContinuityCaptureDServer _exitSessionIfApplicableForDeviceIdentifier:exitReason:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 1024;
      LODWORD(v24) = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s igoring request to exit session for device %@ with reason %@. rapport session state %d", &v15, 0x30u);
    }

    goto LABEL_13;
  }

  v8 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery peerDeviceIdentifier];
  v9 = [v8 isEqualToString:v6];

  v10 = CMContinuityCaptureLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0)
  {
    if (v11)
    {
      v14 = [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery peerDeviceIdentifier];
      v15 = 138544386;
      v16 = self;
      v17 = 2080;
      v18 = "[CMContinuityCaptureDServer _exitSessionIfApplicableForDeviceIdentifier:exitReason:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s igoring request to exit session for device %@ with reason %@. rapport session device %@", &v15, 0x34u);
    }

LABEL_13:

    goto LABEL_7;
  }

  if (v11)
  {
    rpRemoteDisplayDiscovery = self->_rpRemoteDisplayDiscovery;
    v15 = 138544130;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = rpRemoteDisplayDiscovery;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ currently in session with device %@. Calling %@ to exit session for reason %@, ", &v15, 0x2Au);
  }

  [(RPRemoteDisplayDiscovery *)self->_rpRemoteDisplayDiscovery exitDiscoverySessionWithReason:v7];
LABEL_7:
}

- (void)updateSystemStateForDeviceIdentifier:(id)a3 andModel:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  dispatch_assert_queue_V2(self->_queue);
  v7 = [CMContinuityCaptureControl alloc];
  v8 = kCMContinuityCaptureControlBatteryLevel;
  v9 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  v10 = [v9 batteryLevel];
  *buf = xmmword_1000149E0;
  *&buf[16] = 0;
  v11 = [v7 initWithName:v8 attributes:0 entity:4 minimumSupportedVersion:buf value:v10];

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
      v29 = v5;
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
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@ to %{public}@", buf, 0x20u);
    }

    [v6 addObject:v20];
  }

  v25[0] = ContinuityCaptureRapportClientMessageTypeKey;
  v25[1] = ContinuityCaptureRapportClientSystemControlsKey;
  v26[0] = &off_10001D3D0;
  v26[1] = v6;
  v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(CMContinuityCaptureDServer *)self relayMessage:v23 toDeviceWithIdentifier:v5 andModel:a4];
}

- (void)setupRPRemoteDisplayDiscovery
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
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
    v28 = self;
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
    v26 = self;
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
    v9 = self;
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
      v3 = self;
      objc_sync_enter(v3);
      v4 = [(MRGroupSession *)v3->_activeGroupSession identifier];
      objc_sync_exit(v3);

      groupSessionRequestUUID = v3->_groupSessionRequestUUID;
      v3->_groupSessionRequestUUID = 0;

      v6 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v9 = v3;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Leaving wrangler session with identifier %@", buf, 0x16u);
      }

      if (v4)
      {
        MRGroupSessionLeaveSessionWithIdentifier();
      }
    }

    localParticipantInfo = self->_localParticipantInfo;
    self->_localParticipantInfo = 0;
  }
}

- (void)lockScreenLayoutMonitor:(id)a3 didUpdateLayoutWithShieldFrontMost:(BOOL)a4 lockscreenInLayout:(BOOL)a5
{
  v5 = a5;
  objc_initWeak(&location, self);
  if (v5)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FF0C;
    block[3] = &unk_10001CCB8;
    objc_copyWeak(&v10, &location);
    v11 = a4;
    dispatch_async(queue, block);
    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)groupSessionDiscovery:(id)a3 activeSessionDidChange:(id)a4
{
  v5 = a4;
  v6 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ discovery active session did change: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001020C;
  v9[3] = &unk_10001C8F8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)groupSessionDiscovery:(id)a3 discoveredSessionsDidChange:(id)a4
{
  v5 = a4;
  v6 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ discovery session did change with discovered sessions: %@", &v7, 0x16u);
  }
}

- (void)groupSessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ group session did connect: session %@", &v6, 0x16u);
  }
}

- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
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

- (void)groupSession:(id)a3 didUpdateParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ group session: session %@ did update participants %@", &v9, 0x20u);
  }
}

- (void)groupSession:(id)a3 didUpdateMembers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CMContinuityCaptureLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ group session: session %@ did update members %@", &v19, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [CMContinuityCaptureParticipantInfo alloc];
    v10 = [v6 localParticipant];
    v11 = [v9 initWithMRParticipant:v10];
    v12 = +[CCDShieldUILifeCycleManager sharedInstance];
    v13 = [v12 activeSession];
    v14 = [v13 configuration];
    [v14 setParticipantInfo:v11];

    v15 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
    v16 = +[CCDShieldUILifeCycleManager sharedInstance];
    v17 = [v16 activeSession];
    v18 = [v17 configuration];
    [v15 updateClientsWithConfiguration:v18];
  }
}

- (void)routingController:(id)a3 pickedRouteDidChange:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100010840;
  v4[3] = &unk_10001CF20;
  v4[4] = self;
  [MPAVRoutingController getActiveRouteWithCompletion:v4, a4];
}

- (CMContinuityCaptureDServer)initWithQueue:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = CMContinuityCaptureDServer;
  v6 = [(CMContinuityCaptureDServer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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
    v43 = self;
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
    v6 = [(CMContinuityCaptureRapportServer *)v5 compositeDevice];

    if (v6)
    {
      v7 = [(CMContinuityCaptureRapportServer *)self->_rpServer localDevice];
      v8 = [v7 deviceIdentifier];
      v9 = [v8 UUIDString];

      v10 = [(CMContinuityCaptureRapportServer *)self->_rpServer currentSessionID];
      v11 = +[CCDShieldUILifeCycleManager sharedInstance];
      v12 = [v11 activeSession];
      v13 = [v12 configuration];
      v14 = [v13 clientDeviceModel];

      v15 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      v16 = [v15 queue];
      dispatch_assert_queue_not_V2(v16);

      v17 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      v18 = [v17 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A8BC;
      block[3] = &unk_10001C808;
      block[4] = self;
      dispatch_async_and_wait(v18, block);

      [(CMContinuityCaptureRapportServer *)self->_rpServer removeObserver:self forKeyPath:CMContinuityCaptureRemoteStreamPreStartConfigKVOKey context:0];
      [CMContinuityCaptureRemoteCompositeDevice setWombatMode:0];
      sessionClearOutBlock = self->_sessionClearOutBlock;
      if (sessionClearOutBlock)
      {
        dispatch_block_cancel(sessionClearOutBlock);
        v20 = self->_sessionClearOutBlock;
        self->_sessionClearOutBlock = 0;
      }

      v21 = [(CMContinuityCaptureRapportServer *)self->_rpServer compositeDevice];
      [v21 invalidate];

      [(CMContinuityCaptureRapportServer *)self->_rpServer cancel];
      v22 = self->_rpServer;
      self->_rpServer = 0;

      connectedRPDisplaySession = self->_connectedRPDisplaySession;
      self->_connectedRPDisplaySession = 0;

      v24 = +[CCDShieldUILifeCycleManager sharedInstance];
      v25 = [v24 activeSession];
      v26 = [v25 pauseStateSolver];
      [v26 saveUserPauseState:0];

      v27 = +[CCDShieldUILifeCycleManager sharedInstance];
      v28 = [v27 activeSession];

      if (v28)
      {
        v29 = +[CCDShieldUILifeCycleManager sharedInstance];
        v30 = [v29 activeSession];
        v31 = [v30 configuration];
        [v31 setCompositeState:0];

        v32 = +[CMContinuityCaptureXPCServerCCD sharedInstance];
        v33 = +[CCDShieldUILifeCycleManager sharedInstance];
        v34 = [v33 activeSession];
        v35 = [v34 configuration];
        [v32 updateClientsWithConfiguration:v35];
      }

      v36 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v43 = self;
        v44 = 2114;
        v45 = v9;
        v46 = 2048;
        v47 = v10;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ teardown session event for %{public}@ currentSessionID %llx", buf, 0x20u);
      }

      v39[0] = ContinuityCaptureRapportClientMessageTypeKey;
      v39[1] = ContinuityCaptureRapportClientTransportSessionIDKey;
      v40[0] = &off_10001D388;
      v37 = [NSNumber numberWithUnsignedLongLong:v10];
      v40[1] = v37;
      v38 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      [(CMContinuityCaptureDServer *)self relayMessage:v38 toDeviceWithIdentifier:v9 andModel:v14];
    }
  }
}

@end