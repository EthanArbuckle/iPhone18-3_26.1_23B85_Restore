@interface NPHMagicRingbackAutomaton
+ (BOOL)shouldNotFlipMute;
- (NPHMagicRingbackAutomaton)init;
- (void)_flipMuteForCall:(id)call;
- (void)_flipMuteForCall:(id)call and:(id)and;
- (void)setCurrentIncomingCallRequest:(id)request;
- (void)setCurrentOutgoingCallResponse:(id)response;
- (void)stateManager:(id)manager callConfigurationUpdated:(id)updated;
@end

@implementation NPHMagicRingbackAutomaton

- (NPHMagicRingbackAutomaton)init
{
  v6.receiver = self;
  v6.super_class = NPHMagicRingbackAutomaton;
  v2 = [(NPHMagicRingbackAutomaton *)&v6 init];
  if (v2)
  {
    v3 = [[NPHStateManager alloc] initWithDelegate:v2];
    stateManager = v2->_stateManager;
    v2->_stateManager = v3;
  }

  return v2;
}

- (void)stateManager:(id)manager callConfigurationUpdated:(id)updated
{
  updatedCopy = updated;
  currentOutgoingCallResponse = [(NPHMagicRingbackAutomaton *)self currentOutgoingCallResponse];

  if (currentOutgoingCallResponse)
  {
    currentOutgoingCallResponse2 = [(NPHMagicRingbackAutomaton *)self currentOutgoingCallResponse];
    status = [currentOutgoingCallResponse2 status];

    if (status == 6)
    {
      [(NPHMagicRingbackAutomaton *)self setCurrentOutgoingCallResponse:0];
    }
  }

  else
  {
    currentIncomingCallRequest = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];

    if (currentIncomingCallRequest)
    {
      currentIncomingCallRequest2 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
      status2 = [currentIncomingCallRequest2 status];

      if (status2 == 6)
      {
        currentIncomingCallRequest3 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
        disconnectedReason = [currentIncomingCallRequest3 disconnectedReason];

        if (disconnectedReason == 6)
        {
          v14 = [NPHCall alloc];
          v15 = objc_opt_new();
          v16 = [(NPHCall *)v14 initWithTUCall:v15];
          [(NPHMagicRingbackAutomaton *)self setCurrentOutgoingCallResponse:v16];

          currentIncomingCallRequest4 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
          redialPrompt = [currentIncomingCallRequest4 redialPrompt];

          v19 = +[NSUserDefaults standardUserDefaults];
          [v19 doubleForKey:@"NPHMagicRingbackAutomatonCallBackDelay"];
          v21 = v20;

          v22 = dispatch_time(0, (v21 * 1000000000.0));
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100007F58;
          v31[3] = &unk_1000148D8;
          v31[4] = redialPrompt;
          v31[5] = self;
          dispatch_after(v22, &_dispatch_main_q, v31);
        }

        [(NPHMagicRingbackAutomaton *)self setCurrentIncomingCallRequest:0];
      }
    }

    else
    {
      incomingCall = [updatedCopy incomingCall];
      if (incomingCall)
      {
        v24 = incomingCall;
        calls = [updatedCopy calls];
        v26 = [calls count];

        if (v26 == 1)
        {
          incomingCall2 = [updatedCopy incomingCall];
          [(NPHMagicRingbackAutomaton *)self setCurrentIncomingCallRequest:incomingCall2];

          v28 = +[TUCallCenter sharedInstance];
          currentIncomingCallRequest5 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
          onlyTUCall = [currentIncomingCallRequest5 onlyTUCall];
          [v28 answerCall:onlyTUCall];
        }
      }
    }
  }
}

- (void)setCurrentIncomingCallRequest:(id)request
{
  requestCopy = request;
  objc_storeStrong(&self->_currentIncomingCallRequest, request);
  v6 = sub_100001C24();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentIncomingCallRequest = self->_currentIncomingCallRequest;
    *buf = 138412290;
    v13 = currentIncomingCallRequest;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_currentIncomingCallRequest: %@", buf, 0xCu);
  }

  v8 = dispatch_time(0, 3000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008148;
  v10[3] = &unk_1000148D8;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

- (void)setCurrentOutgoingCallResponse:(id)response
{
  responseCopy = response;
  objc_storeStrong(&self->_currentOutgoingCallResponse, response);
  v6 = sub_100001C24();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentOutgoingCallResponse = self->_currentOutgoingCallResponse;
    *buf = 138412290;
    v13 = currentOutgoingCallResponse;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_currentOutgoingCallResponse: %@", buf, 0xCu);
  }

  v8 = dispatch_time(0, 3000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000082A0;
  v10[3] = &unk_1000148D8;
  v10[4] = self;
  v11 = responseCopy;
  v9 = responseCopy;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

- (void)_flipMuteForCall:(id)call
{
  callCopy = call;
  if (([objc_opt_class() shouldNotFlipMute] & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100008358;
    v5[3] = &unk_1000148D8;
    v5[4] = self;
    v6 = callCopy;
    [(NPHMagicRingbackAutomaton *)self _flipMuteForCall:v6 and:v5];
  }
}

- (void)_flipMuteForCall:(id)call and:(id)and
{
  andCopy = and;
  callCopy = call;
  onlyTUCall = [callCopy onlyTUCall];
  isUplinkMuted = [onlyTUCall isUplinkMuted];
  onlyTUCall2 = [callCopy onlyTUCall];

  [onlyTUCall2 setUplinkMuted:isUplinkMuted ^ 1];
  v10 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008590;
  block[3] = &unk_100014B80;
  v13 = andCopy;
  v11 = andCopy;
  dispatch_after(v10, &_dispatch_main_q, block);
}

+ (BOOL)shouldNotFlipMute
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"NPHDoNotFlipMuteDuringPPTs"];

  return v3;
}

@end