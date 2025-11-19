@interface NPHMagicRingbackAutomaton
+ (BOOL)shouldNotFlipMute;
- (NPHMagicRingbackAutomaton)init;
- (void)_flipMuteForCall:(id)a3;
- (void)_flipMuteForCall:(id)a3 and:(id)a4;
- (void)setCurrentIncomingCallRequest:(id)a3;
- (void)setCurrentOutgoingCallResponse:(id)a3;
- (void)stateManager:(id)a3 callConfigurationUpdated:(id)a4;
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

- (void)stateManager:(id)a3 callConfigurationUpdated:(id)a4
{
  v5 = a4;
  v6 = [(NPHMagicRingbackAutomaton *)self currentOutgoingCallResponse];

  if (v6)
  {
    v7 = [(NPHMagicRingbackAutomaton *)self currentOutgoingCallResponse];
    v8 = [v7 status];

    if (v8 == 6)
    {
      [(NPHMagicRingbackAutomaton *)self setCurrentOutgoingCallResponse:0];
    }
  }

  else
  {
    v9 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];

    if (v9)
    {
      v10 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
      v11 = [v10 status];

      if (v11 == 6)
      {
        v12 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
        v13 = [v12 disconnectedReason];

        if (v13 == 6)
        {
          v14 = [NPHCall alloc];
          v15 = objc_opt_new();
          v16 = [(NPHCall *)v14 initWithTUCall:v15];
          [(NPHMagicRingbackAutomaton *)self setCurrentOutgoingCallResponse:v16];

          v17 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
          v18 = [v17 redialPrompt];

          v19 = +[NSUserDefaults standardUserDefaults];
          [v19 doubleForKey:@"NPHMagicRingbackAutomatonCallBackDelay"];
          v21 = v20;

          v22 = dispatch_time(0, (v21 * 1000000000.0));
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100007F58;
          v31[3] = &unk_1000148D8;
          v31[4] = v18;
          v31[5] = self;
          dispatch_after(v22, &_dispatch_main_q, v31);
        }

        [(NPHMagicRingbackAutomaton *)self setCurrentIncomingCallRequest:0];
      }
    }

    else
    {
      v23 = [v5 incomingCall];
      if (v23)
      {
        v24 = v23;
        v25 = [v5 calls];
        v26 = [v25 count];

        if (v26 == 1)
        {
          v27 = [v5 incomingCall];
          [(NPHMagicRingbackAutomaton *)self setCurrentIncomingCallRequest:v27];

          v28 = +[TUCallCenter sharedInstance];
          v29 = [(NPHMagicRingbackAutomaton *)self currentIncomingCallRequest];
          v30 = [v29 onlyTUCall];
          [v28 answerCall:v30];
        }
      }
    }
  }
}

- (void)setCurrentIncomingCallRequest:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentIncomingCallRequest, a3);
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
  v11 = v5;
  v9 = v5;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

- (void)setCurrentOutgoingCallResponse:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentOutgoingCallResponse, a3);
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
  v11 = v5;
  v9 = v5;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

- (void)_flipMuteForCall:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() shouldNotFlipMute] & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100008358;
    v5[3] = &unk_1000148D8;
    v5[4] = self;
    v6 = v4;
    [(NPHMagicRingbackAutomaton *)self _flipMuteForCall:v6 and:v5];
  }
}

- (void)_flipMuteForCall:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 onlyTUCall];
  v8 = [v7 isUplinkMuted];
  v9 = [v6 onlyTUCall];

  [v9 setUplinkMuted:v8 ^ 1];
  v10 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008590;
  block[3] = &unk_100014B80;
  v13 = v5;
  v11 = v5;
  dispatch_after(v10, &_dispatch_main_q, block);
}

+ (BOOL)shouldNotFlipMute
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"NPHDoNotFlipMuteDuringPPTs"];

  return v3;
}

@end