@interface Communicator
+ (id)myNumber;
- (BOOL)supports3WC;
- (Communicator)initWithDelegate:(Delegate *)a3;
- (id)_callForIdentifier:(id)a3;
- (id)_getSubscriptionContext;
- (id)_identifierForCall:(id)a3;
- (id)_myNumber;
- (id)getCountryCode;
- (id)getCountryCodeForIdentifier:(id)a3;
- (id)getCountryCodeIdentifer;
- (id)getRegistrationStatus;
- (int)_answerCall:(id)a3 uid:(const void *)a4 behavior:(int64_t)a5;
- (int)_dialNumber:(const void *)a3 uid:(const void *)a4 providerIdentifier:(const void *)a5;
- (int)_redialNumberWhileScreening:(const void *)a3 uid:(const void *)a4 providerIdentifier:(const void *)a5;
- (int)addHeldCall;
- (int)addVirtualCall;
- (int)answerIncomingCall:()basic_string<char;
- (int)dialNumber:(const void *)a3 uid:()basic_string<char;
- (int)enableEchoCancellationNoiseReduction:(BOOL)a3;
- (int)getCurrentCalls:(void *)a3;
- (int)getCurrentExpanseCalls:(void *)a3;
- (int)getCurrentScreeningCalls:(void *)a3;
- (int)getMobileEquipmentIdentity:(void *)a3;
- (int)getMobileSubscriberIdentity:(void *)a3;
- (int)getOperatorStatus:(void *)a3;
- (int)getSignalStrength:(int *)a3 mode:(int)a4;
- (int)getSubscriberNumber:(void *)a3;
- (int)getTransmitState:(BOOL *)a3;
- (int)hangupActiveCall;
- (int)holdActiveCalls:()basic_string<char;
- (int)privateConference:(id)a3;
- (int)rejectIncomingCall;
- (int)releaseActiveCalls:()basic_string<char;
- (int)releaseCall:(id)a3;
- (int)releaseHeldCalls;
- (int)removeVirtualCall;
- (int)sendDTMFTone:(unsigned __int8)a3;
- (int)setScreeningCall:(id)a3 isScreening:(BOOL)a4;
- (void)_handleCTCellularTransmitStateChangedNotification:(__CFDictionary *)a3;
- (void)_handleTUCallCenterCallExpanseStatusChangedNotification:(id)a3;
- (void)_handleTUCallCenterCallStatusChangedNotification:(id)a3;
- (void)_updateCalls;
- (void)activeSubscriptionsDidChange;
- (void)context:(id)a3 capabilitiesChanged:(id)a4;
- (void)dealloc;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
- (void)invalidate;
- (void)networkReselectionNeeded:(id)a3;
- (void)networkSelected:(id)a3 success:(BOOL)a4 mode:(id)a5;
- (void)operatorNameChanged:(id)a3 name:(id)a4;
- (void)setCalls:(CallList *)a3;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
@end

@implementation Communicator

- (void)_updateCalls
{
  v3 = [(Communicator *)self tuCallCenter];
  v32 = [v3 currentAudioAndVideoCalls];

  v44 = 0;
  v45 = 0;
  v46 = 0;
  [(Communicator *)self calls];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_1000DA2A8(&v41);
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current TU call(s): %@", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v32;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v5)
  {
    v6 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        memset(&v50, 0, sizeof(v50));
        *buf = 0u;
        memset(v49, 0, sizeof(v49));
        v9 = [(Communicator *)self _identifierForCall:v8];
        sub_1000DA114(buf, v9);

        v10 = *buf;
        v11 = sub_1000D8B24(&v44, v10);

        v12 = [v8 status];
        if (v12 <= 2)
        {
          switch(v12)
          {
            case 0:
              goto LABEL_51;
            case 1:
              if ([obj count] < 2)
              {
                v12 = 1;
              }

              else if ([v8 isConnected])
              {
                v12 = 1;
              }

              else
              {
                v12 = 6;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_24;
          }
        }

        else if (v12 > 4)
        {
          if (v12 != 5)
          {
            if (v12 == 6)
            {
              goto LABEL_51;
            }

            goto LABEL_24;
          }

          if ([obj count] != 1 || v45 == v11)
          {
            goto LABEL_51;
          }

          v12 = *(v11 + 4);
        }

        else
        {
          if (v12 == 3)
          {
            v13 = [v8 hasSentInvitation] == 0;
            v14 = 3;
          }

          else
          {
            v13 = [obj count] == 1;
            v14 = 5;
          }

          if (v13)
          {
            v12 = v14;
          }

          else
          {
            v12 = v14 + 1;
          }
        }

        LODWORD(v49[0]) = v12;
LABEL_24:
        if (v45 != v11)
        {
          *&buf[8] = *(v11 + 2);
        }

        buf[12] = [v8 isOutgoing];
        buf[13] = [v8 isConferenced];
        buf[14] = [v8 mixesVoiceWithMedia];
        buf[15] = [v8 isScreening];
        v15 = [v8 handle];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 value];
          v18 = [(Communicator *)self _appearsToBeEmailAddress:v17];

          if ((v18 & 1) == 0)
          {
            v19 = [v16 value];
            v20 = v19;
            sub_1000DA180(&__str, [v19 UTF8String]);
            sub_1000DA184((v49 + 8), &__str);
            sub_1000D8E64(&__str);
          }

          if (v45 == v11 || !sub_1000DA1D4(v11 + 3, v49 + 1))
          {
            v21 = [v8 displayName];
            v22 = v21;
            if (v21)
            {
              if ([v21 length] >= 0x81)
              {
                v23 = [v22 substringToIndex:128];

                v22 = v23;
              }

              v24 = v22;
              if ([v22 UTF8String])
              {
                v25 = v22;
                sub_100007E30(__p, [v22 UTF8String]);
                sub_1000D8E68(__p, &__str);
                std::string::operator=(&v50, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                if (v36 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v26 = qword_100BCE948;
                if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(__str.__r_.__value_.__l.__data_) = 138412290;
                  *(__str.__r_.__value_.__r.__words + 4) = v8;
                  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid call display name for %@", &__str, 0xCu);
                }
              }
            }
          }

          else
          {
            std::string::operator=(&v50, (v11 + 10));
          }
        }

        sub_1000D90A8(&v41, buf);
LABEL_51:
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        sub_1000D8E64(v49 + 8);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
      v5 = v27;
    }

    while (v27);
  }

  v29 = v41;
  v28 = v42;
  while (v29 != v28)
  {
    if (!*(v29 + 8))
    {
      *(v29 + 8) = sub_1000D6A58(&v41);
      v28 = v42;
    }

    v29 += 104;
  }

  v30 = qword_100BCE948;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000D6D88(&v41, buf);
    v31 = (SBYTE7(v49[0]) & 0x80u) == 0 ? buf : *buf;
    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updated call(s): %s", &__str, 0xCu);
    if (SBYTE7(v49[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  sub_1000DA9C4(v34);
  [(Communicator *)self setCalls:v34];
  *buf = v34;
  sub_1000D6BD4(buf);
  *buf = &v41;
  sub_1000D6BD4(buf);
  *buf = &v44;
  sub_1000D6BD4(buf);
}

- (Communicator)initWithDelegate:(Delegate *)a3
{
  v27.receiver = self;
  v27.super_class = Communicator;
  v4 = [(Communicator *)&v27 init];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = a3;
    if (NSClassFromString(@"TUCallCenter"))
    {
      v6 = *(sub_1000D999C() + 8);
      v7 = [TUCallCenter callCenterWithQueue:v6];
      tuCallCenter = v5->_tuCallCenter;
      v5->_tuCallCenter = v7;

      v9 = [(TUCallCenter *)v5->_tuCallCenter callServicesClientCapabilities];
      [v9 setWantsToScreenCalls:1];

      v10 = [(TUCallCenter *)v5->_tuCallCenter callServicesClientCapabilities];
      [v10 save];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallInvitationSentNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallInvitationSentNotification object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallerIDChangedNotification object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallConnectedNotification object:0];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v5 selector:"_handleTUCallCenterCallExpanseStatusChangedNotification:" name:TUCallMixesVoiceWithMediaChangedNotification object:0];

      v19 = +[NSNotificationCenter defaultCenter];
      [v19 addObserver:v5 selector:"_handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];

      [(Communicator *)v5 _updateCalls];
    }

    if (sub_1005FC9C4())
    {
      v20 = *(sub_1000D999C() + 8);
      v5->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

      v21 = [CoreTelephonyClient alloc];
      v22 = *(sub_1000D999C() + 8);
      v23 = [v21 initWithQueue:v22];
      ctClient = v5->_ctClient;
      v5->_ctClient = v23;

      [(CoreTelephonyClient *)v5->_ctClient setDelegate:v5];
      [(Communicator *)v5 ctServerConnection];
      v26 = v5;
      _CTServerConnectionRegisterBlockForNotification();
    }
  }

  return v5;
}

- (void)invalidate
{
  if ([(Communicator *)self ctServerConnection])
  {
    [(Communicator *)self ctServerConnection];
    _CTServerConnectionUnregisterForAllNotifications();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(Communicator *)self setDelegate:0];
}

- (void)dealloc
{
  if ([(Communicator *)self ctServerConnection])
  {
    CFRelease([(Communicator *)self ctServerConnection]);
  }

  v3.receiver = self;
  v3.super_class = Communicator;
  [(Communicator *)&v3 dealloc];
}

- (id)_identifierForCall:(id)a3
{
  v3 = a3;
  v4 = [NSUUID alloc];
  v5 = [v3 uniqueProxyIdentifier];
  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

- (id)_callForIdentifier:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [(Communicator *)self tuCallCenter];
  v6 = [v5 callWithUniqueProxyIdentifier:v4];

  return v6;
}

- (id)_myNumber
{
  v2 = [(Communicator *)self _getSubscriptionContext];
  v3 = [v2 phoneNumber];

  return v3;
}

- (int)_dialNumber:(const void *)a3 uid:(const void *)a4 providerIdentifier:(const void *)a5
{
  v9 = objc_alloc_init(TUCallProviderManager);
  if (*(a5 + 23) >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  v11 = [NSString stringWithUTF8String:v10];
  v12 = [v9 providerWithIdentifier:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v9 telephonyProvider];
  }

  v15 = v14;

  v16 = [[TUDialRequest alloc] initWithProvider:v15];
  if (*(a3 + 23) >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  v18 = [NSString stringWithUTF8String:v17];
  v19 = [TUHandle handleWithDestinationID:v18];
  [v16 setHandle:v19];

  if (*(a4 + 23) >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  v21 = [NSString stringWithUTF8String:v20];
  [v16 setAudioSourceIdentifier:v21];

  v22 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    v26 = 136315394;
    v27 = v23;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Dialing '%s' with TU provider %@", &v26, 0x16u);
  }

  v24 = [(Communicator *)self tuCallCenter];
  [v24 launchAppForDialRequest:v16 completion:0];

  return 0;
}

- (int)_redialNumberWhileScreening:(const void *)a3 uid:(const void *)a4 providerIdentifier:(const void *)a5
{
  v9 = objc_alloc_init(TUCallProviderManager);
  if (*(a5 + 23) >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  v11 = [NSString stringWithUTF8String:v10];
  v12 = [v9 providerWithIdentifier:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v9 telephonyProvider];
  }

  v15 = v14;

  v16 = [[TUDialRequest alloc] initWithProvider:v15];
  if (*(a3 + 23) >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  v18 = [NSString stringWithUTF8String:v17];
  v19 = [TUHandle handleWithDestinationID:v18];
  [v16 setHandle:v19];

  if (*(a4 + 23) >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  v21 = [NSString stringWithUTF8String:v20];
  [v16 setAudioSourceIdentifier:v21];

  v22 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    if (*(a3 + 23) >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    v28 = 136315394;
    v29 = v23;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Calling handleRedialCommandWhileScreening '%s' with TU provider %@", &v28, 0x16u);
  }

  v24 = [(Communicator *)self tuCallCenter];
  v25 = objc_opt_respondsToSelector();

  v26 = [(Communicator *)self tuCallCenter];
  if (v25)
  {
    [v26 handleRedialCommandWhileScreening:v16];
  }

  else
  {
    [v26 launchAppForDialRequest:v16 completion:0];
  }

  return 0;
}

- (int)_answerCall:(id)a3 uid:(const void *)a4 behavior:(int64_t)a5
{
  v8 = a3;
  v9 = [[TUAnswerRequest alloc] initWithCall:v8];
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  v11 = [NSString stringWithUTF8String:v10];
  [v9 setSourceIdentifier:v11];

  [v9 setBehavior:a5];
  v12 = [(Communicator *)self tuCallCenter];
  [v12 answerWithRequest:v9];

  return 0;
}

- (id)_getSubscriptionContext
{
  v2 = [(Communicator *)self ctClient];
  v3 = [v2 getSubscriptionInfoWithError:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 userDefaultVoice];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)activeSubscriptionsDidChange
{
  if ([(Communicator *)self delegate])
  {
    v3 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received 'active subscriptions did change' delegate", v11, 2u);
    }

    v4 = [(Communicator *)self _getSubscriptionContext];
    v5 = [(Communicator *)self ctClient];
    v6 = [v5 getSignalStrengthInfo:v4 error:0];

    v7 = [(Communicator *)self delegate];
    v8 = [v6 bars];
    (*(v7->var0 + 4))(v7, [v8 unsignedIntValue]);

    v9 = [(Communicator *)self delegate];
    (*(v9->var0 + 3))(v9);
    v10 = [(Communicator *)self delegate];
    (*(v10->var0 + 1))(v10);
  }
}

- (void)operatorNameChanged:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(Communicator *)self delegate])
  {
    v8 = [v6 userDefaultVoice];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'operator name changed' delegate", v12, 2u);
      }

      v11 = [(Communicator *)self delegate];
      (*(v11->var0 + 1))(v11);
    }
  }
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(Communicator *)self delegate])
  {
    v8 = [v6 userDefaultVoice];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'signal strength changed' delegate", v14, 2u);
      }

      v11 = [v7 bars];
      v12 = [v11 unsignedIntValue];

      v13 = [(Communicator *)self delegate];
      (*(v13->var0 + 4))(v13, v12);
    }
  }
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(Communicator *)self delegate])
  {
    v8 = [v6 userDefaultVoice];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'display status changed' delegate", v12, 2u);
      }

      v11 = [(Communicator *)self delegate];
      (*(v11->var0 + 3))(v11);
    }
  }
}

- (void)context:(id)a3 capabilitiesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(Communicator *)self delegate])
  {
    v8 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received 'context capabilities changed' notification", v10, 2u);
    }

    v9 = [(Communicator *)self delegate];
    (*(v9->var0 + 2))(v9);
  }
}

- (void)networkReselectionNeeded:(id)a3
{
  v4 = a3;
  if ([(Communicator *)self delegate])
  {
    v5 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received 'network selection needed' notification", v8, 2u);
    }

    v6 = [(Communicator *)self delegate];
    (*(v6->var0 + 1))(v6);
    v7 = [(Communicator *)self delegate];
    (*(v7->var0 + 3))(v7);
  }
}

- (void)networkSelected:(id)a3 success:(BOOL)a4 mode:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(Communicator *)self delegate])
  {
    v9 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received 'network selection changed' notification", v12, 2u);
    }

    v10 = [(Communicator *)self delegate];
    (*(v10->var0 + 1))(v10);
    v11 = [(Communicator *)self delegate];
    (*(v11->var0 + 3))(v11);
  }
}

- (void)_handleTUCallCenterCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(Communicator *)self _identifierForCall:v5];

  v7 = *(sub_1000D999C() + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100553680;
  v9[3] = &unk_100AE0B60;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)_handleTUCallCenterCallExpanseStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = qword_100BCE948;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Expanse status changed for call: %@", &v7, 0xCu);
  }

  [(Communicator *)self _updateCalls];
}

- (void)_handleCTCellularTransmitStateChangedNotification:(__CFDictionary *)a3
{
  if ([(Communicator *)self delegate])
  {
    v5 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received 'cellular transmit state changed' notification", v9, 2u);
    }

    Value = CFDictionaryGetValue(a3, kKeyCTCellularTransmitState);
    if (Value)
    {
      v7 = CFEqual(Value, kCTCellularTransmitStarted) != 0;
      v8 = [(Communicator *)self delegate];
      (*(v8->var0 + 5))(v8, v7);
    }
  }
}

+ (id)myNumber
{
  v2 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v3 = [v2 getSubscriptionInfoWithError:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 userDefaultVoice];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v5 = [v8 phoneNumber];
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)supports3WC
{
  if ([(Communicator *)self ctServerConnection])
  {
    [(Communicator *)self ctServerConnection];
    _CTServerConnectionCopySystemCapabilities();
  }

  return 1;
}

- (int)answerIncomingCall:()basic_string<char
{
  v5 = [(Communicator *)self tuCallCenter];
  v6 = [v5 audioOrVideoCallWithStatus:4];

  v7 = qword_100BCE948;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found incoming TU call to answer: %@", &v10, 0xCu);
    }

    v8 = [(Communicator *)self _answerCall:v6 uid:a3 behavior:0];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_10084145C();
    }

    v8 = 13;
  }

  return v8;
}

- (int)rejectIncomingCall
{
  v3 = [(Communicator *)self tuCallCenter];
  v4 = [v3 audioOrVideoCallWithStatus:4];

  v5 = qword_100BCE948;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found incoming TU call to reject: %@", &v9, 0xCu);
    }

    v6 = [(Communicator *)self tuCallCenter];
    [v6 disconnectCall:v4];

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841490();
    }

    v7 = 13;
  }

  return v7;
}

- (int)hangupActiveCall
{
  v3 = [(Communicator *)self tuCallCenter];
  v4 = [v3 audioOrVideoCallWithStatus:3];

  if (v4)
  {
    v5 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found sending TU call to disconnect: %@", &v13, 0xCu);
    }

    v6 = [(Communicator *)self tuCallCenter];
    [v6 disconnectCall:v4];
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v7 = [(Communicator *)self tuCallCenter];
  v6 = [v7 audioAndVideoCallsWithStatus:1];

  v8 = [v6 count];
  v9 = qword_100BCE948;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found active TU calls to disconnect: %@", &v13, 0xCu);
    }

    v10 = [(Communicator *)self tuCallCenter];
    [v10 disconnectCurrentCallAndActivateHeld];

    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
  {
    sub_1008414C4();
  }

  v11 = 13;
LABEL_10:

  return v11;
}

- (int)releaseHeldCalls
{
  v3 = [(Communicator *)self tuCallCenter];
  v4 = [v3 audioAndVideoCallsWithStatus:2];

  v14 = v4;
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = qword_100BCE948;
          if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found held TU call to disconnect: %@", buf, 0xCu);
          }

          v11 = [(Communicator *)self tuCallCenter];
          [v11 disconnectCall:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008414F8();
    }

    v12 = 13;
  }

  return v12;
}

- (int)releaseActiveCalls:()basic_string<char
{
  v5 = [(Communicator *)self tuCallCenter];
  v6 = [v5 audioOrVideoCallWithStatus:4];

  if (v6)
  {
    v7 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found incoming TU call to answer: %@", &v15, 0xCu);
    }

    v8 = [(Communicator *)self _answerCall:v6 uid:a3 behavior:0];
  }

  else
  {
    v9 = [(Communicator *)self tuCallCenter];
    v10 = [v9 audioAndVideoCallsWithStatus:1];

    v11 = [v10 count];
    v12 = qword_100BCE948;
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Found active TU calls to disconnect: %@", &v15, 0xCu);
      }

      v13 = [(Communicator *)self tuCallCenter];
      [v13 disconnectCurrentCallAndActivateHeld];

      v8 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
      {
        sub_1008414C4();
      }

      v8 = 13;
    }
  }

  return v8;
}

- (int)holdActiveCalls:()basic_string<char
{
  v5 = [(Communicator *)self tuCallCenter];
  v6 = [v5 audioOrVideoCallWithStatus:4];

  if (!v6)
  {
    v11 = [(Communicator *)self tuCallCenter];
    v12 = [v11 audioOrVideoCallWithStatus:1];

    v13 = [(Communicator *)self tuCallCenter];
    v14 = [v13 audioOrVideoCallWithStatus:2];

    if (v12 && v14)
    {
      v15 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Swapping TU calls", &v24, 2u);
      }

      v16 = [(Communicator *)self tuCallCenter];
      [v16 swapCalls];
    }

    else if (!v12 || v14)
    {
      v22 = qword_100BCE948;
      if (v12 || !v14)
      {
        if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
        {
          sub_100841560();
        }

        v10 = 13;
        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Found held TU call to resume: %@", &v24, 0xCu);
      }

      v23 = [(Communicator *)self tuCallCenter];
      [v23 unholdCall:v14];
    }

    else
    {
      v18 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Found active TU call to hold: %@", &v24, 0xCu);
      }

      v19 = [v12 model];
      v20 = [v19 supportsHolding];

      if (!v20)
      {
        if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
        {
          sub_10084152C();
        }

        v10 = 2;
        goto LABEL_14;
      }

      v21 = [(Communicator *)self tuCallCenter];
      [v21 holdCall:v12];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v7 = [(Communicator *)self tuCallCenter];
  if ([v7 isHoldAndAnswerAllowed])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    v24 = 138412546;
    v25 = v6;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found incoming TU call to answer %@ with behavior %ld", &v24, 0x16u);
  }

  v10 = [(Communicator *)self _answerCall:v6 uid:a3 behavior:v8];
LABEL_15:

  return v10;
}

- (int)addHeldCall
{
  v3 = [(Communicator *)self tuCallCenter];
  v4 = [v3 audioOrVideoCallWithStatus:2];

  v5 = [(Communicator *)self tuCallCenter];
  v6 = [v5 audioOrVideoCallWithStatus:1];

  v7 = qword_100BCE948;
  if (v4 && v6)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found held TU call to create a conference: %@", &v14, 0xCu);
    }

    v8 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Found active TU call to create a conference: %@", &v14, 0xCu);
    }

    v9 = [(Communicator *)self tuCallCenter];
    v10 = [v9 canGroupCall:v4 withCall:v6];

    if (v10)
    {
      v11 = [(Communicator *)self tuCallCenter];
      [v11 groupCall:v4 withOtherCall:v6];

      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
      {
        sub_1008415C8();
      }

      v12 = 2;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841594();
    }

    v12 = 13;
  }

  return v12;
}

- (int)releaseCall:(id)a3
{
  v4 = a3;
  v5 = [(Communicator *)self _callForIdentifier:v4];
  v6 = qword_100BCE948;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found TU call to disconnect: %@", &v14, 0xCu);
    }

    v7 = [(Communicator *)self tuCallCenter];
    [v7 disconnectCall:v5];

    v8 = [(Communicator *)self tuCallCenter];
    v9 = [v8 audioOrVideoCallWithStatus:2];

    if (v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found held TU call to resume: %@", &v14, 0xCu);
      }

      v11 = [(Communicator *)self tuCallCenter];
      [v11 unholdCall:v9];
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008415FC();
    }

    v12 = 15;
  }

  return v12;
}

- (int)privateConference:(id)a3
{
  v4 = a3;
  v5 = [(Communicator *)self _callForIdentifier:v4];
  v6 = qword_100BCE948;
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841698();
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found TU call to leave the conference: %@", &v12, 0xCu);
  }

  if (![v5 isConferenced])
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841630();
    }

LABEL_11:
    v10 = 15;
    goto LABEL_12;
  }

  v7 = [v5 model];
  v8 = [v7 supportsUngrouping];

  if (v8)
  {
    v9 = [(Communicator *)self tuCallCenter];
    [v9 ungroupCall:v5];

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841664();
    }

    v10 = 2;
  }

LABEL_12:

  return v10;
}

- (int)dialNumber:(const void *)a3 uid:()basic_string<char
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1000DA2A8(&v14);
  [(Communicator *)self getCurrentScreeningCalls:&v14];
  if (v14 == v15)
  {
    sub_1000D6B20(a3, v12);
    sub_100007E30(__p, "");
    v7 = [(Communicator *)self _dialNumber:v12 uid:a4 providerIdentifier:__p];
  }

  else
  {
    sub_1000D6B20(a3, v12);
    sub_100007E30(__p, "");
    v7 = [(Communicator *)self _redialNumberWhileScreening:v12 uid:a4 providerIdentifier:__p];
  }

  v8 = v7;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v12[0] = &v14;
  sub_1000D6BD4(v12);
  return v8;
}

- (int)sendDTMFTone:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(Communicator *)self tuCallCenter];
  v5 = [v4 audioOrVideoCallWithStatus:1];

  v6 = [v5 model];
  v7 = [v6 supportsDTMF];

  if (v7)
  {
    [v5 playDTMFToneForKey:v3];
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008416CC();
    }

    v8 = 13;
  }

  return v8;
}

- (int)enableEchoCancellationNoiseReduction:(BOOL)a3
{
  v3 = a3;
  if (![(Communicator *)self ctServerConnection]|| ([(Communicator *)self ctServerConnection], (result = _CTServerConnectionEchoCancelationAndNoiseReduction()) != 0))
  {
    v6 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841700(v3, v6, v7, v8, v9, v10, v11, v12);
    }

    return 2;
  }

  return result;
}

- (int)addVirtualCall
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  [(Communicator *)self calls];
  v18[0] = 0;
  v18[1] = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:v18];
  v4 = sub_1000D8B24(&v15, v3);
  if (v16 == v4)
  {
    memset(&__p, 0, sizeof(__p));
    memset(v13, 0, sizeof(v13));
    sub_1000DA114(v13, v3);
    *&v13[16] = 7;
    *&v13[8] = 1;
    *&v13[12] = 1;
    v6 = [(Communicator *)self _myNumber];
    v7 = v6;
    sub_1000DA180(&__str, [v6 UTF8String]);
    sub_1000DA184(&v13[24], &__str);
    sub_1000D8E64(&__str);

    v8 = sub_100438B14(@"MY_NUMBER", @"My Number");
    v9 = v8;
    sub_100007E30(&__str, [v8 UTF8String]);
    std::string::operator=(&__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v15 != v16)
    {
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
      {
        sub_1008417B8();
      }

      sub_1006EEE70(&v15);
    }

    sub_1000D90A8(&v15, v13);
    sub_1000DA9C4(v11);
    [(Communicator *)self setCalls:v11];
    __str.__r_.__value_.__r.__words[0] = v11;
    sub_1000D6BD4(&__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1000D8E64(&v13[24]);

    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841784();
    }

    v5 = 15;
  }

  *v13 = &v15;
  sub_1000D6BD4(v13);
  return v5;
}

- (int)removeVirtualCall
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  [(Communicator *)self calls];
  v12[0] = 0;
  v12[1] = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:v12];
  v4 = sub_1000D8B24(&v8, v3);
  if (v9 == v4)
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008417EC();
    }

    v5 = 15;
  }

  else
  {
    sub_1006EEEBC(&v8, v4);
    sub_1000DA9C4(v7);
    [(Communicator *)self setCalls:v7];
    v11 = v7;
    sub_1000D6BD4(&v11);
    v5 = 0;
  }

  v12[0] = &v8;
  sub_1000D6BD4(v12);
  return v5;
}

- (int)getCurrentCalls:(void *)a3
{
  [(Communicator *)self calls];
  if (&v5 != a3)
  {
    sub_1000D8984(a3, v5, v6, 0x4EC4EC4EC4EC4EC5 * ((v6 - v5) >> 3));
  }

  v7 = &v5;
  sub_1000D6BD4(&v7);
  return 0;
}

- (int)getCurrentExpanseCalls:(void *)a3
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  [(Communicator *)self calls];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_1000DA2A8(&v7);
  v5 = v10;
  v4 = v11;
  while (v5 != v4)
  {
    if (*(v5 + 14) == 1)
    {
      sub_1000D90A8(&v7, v5);
      v4 = v11;
    }

    v5 += 104;
  }

  if (&v7 != a3)
  {
    sub_1000D8984(a3, v7, v8, 0x4EC4EC4EC4EC4EC5 * ((v8 - v7) >> 3));
  }

  v13 = &v7;
  sub_1000D6BD4(&v13);
  v7 = &v10;
  sub_1000D6BD4(&v7);
  return 0;
}

- (int)setScreeningCall:(id)a3 isScreening:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(Communicator *)self _callForIdentifier:v6];
  if (v7)
  {
    v8 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = v4;
      LOWORD(v18) = 2112;
      *(&v18 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Screening:%d Call:%@", buf, 0x12u);
    }

    [(Communicator *)self _updateCalls];
    *buf = 0;
    v18 = 0uLL;
    [(Communicator *)self calls];
    v9 = sub_1000D8B24(buf, v6);
    if (v18 != v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found Call. Updating State", v16, 2u);
      }

      *(v9 + 15) = v4;
      sub_1000DA9C4(v15);
      [(Communicator *)self setCalls:v15];
      *v16 = v15;
      sub_1000D6BD4(v16);
      v11 = [(Communicator *)self delegate];
      (*v11->var0)(v11, v6);
      *v16 = buf;
      sub_1000D6BD4(v16);
      v12 = 0;
      goto LABEL_11;
    }

    *v16 = buf;
    sub_1000D6BD4(v16);
  }

  v13 = qword_100BCE948;
  v12 = 16;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
  {
    sub_100841820(v7, v4, v13);
  }

LABEL_11:

  return v12;
}

- (int)getCurrentScreeningCalls:(void *)a3
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  [(Communicator *)self calls];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_1000DA2A8(&v7);
  v5 = v10;
  v4 = v11;
  while (v5 != v4)
  {
    if (*(v5 + 15) == 1)
    {
      sub_1000D90A8(&v7, v5);
      v4 = v11;
    }

    v5 += 104;
  }

  if (&v7 != a3)
  {
    sub_1000D8984(a3, v7, v8, 0x4EC4EC4EC4EC4EC5 * ((v8 - v7) >> 3));
  }

  v13 = &v7;
  sub_1000D6BD4(&v13);
  v7 = &v10;
  sub_1000D6BD4(&v7);
  return 0;
}

- (int)getOperatorStatus:(void *)a3
{
  if ([(Communicator *)self ctServerConnection])
  {
    *v11 = 0u;
    v12 = 0u;
    sub_100007E30(&v11[1], "");
    cf1 = 0;
    [(Communicator *)self ctServerConnection];
    if (!_CTServerConnectionGetNetworkSelectionMode() && CFEqual(cf1, kCTRegistrationNetworkSelectionModeManual))
    {
      LODWORD(v11[0]) = 1;
    }

    v5 = [(Communicator *)self _getSubscriptionContext];
    v6 = [(Communicator *)self ctClient];
    v7 = [v6 getLocalizedOperatorName:v5 error:0];

    if (v7)
    {
      sub_100007E30(&__p, [v7 UTF8String]);
      std::string::operator=(&v11[1], &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::operator=((a3 + 8), &v11[1]);
      *a3 = v11[0];
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
      if (v7)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
  {
    sub_1008418AC();
  }

  return 2;
}

- (id)getRegistrationStatus
{
  if ([(Communicator *)self ctServerConnection])
  {
    v3 = [(Communicator *)self _getSubscriptionContext];
    v4 = [(Communicator *)self ctClient];
    v5 = [v4 copyRegistrationDisplayStatus:v3 error:0];

    v6 = [v5 registrationDisplayStatus];
    v7 = objc_alloc_init(BDRegistrationStatus);
    if ([v6 isEqualToString:kCTRegistrationStatusRegisteredHome])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:kCTRegistrationStatusRegisteredRoaming];
    }

    [(BDRegistrationStatus *)v7 setService:v8];
    -[BDRegistrationStatus setRoaming:](v7, "setRoaming:", [v6 isEqualToString:kCTRegistrationStatusRegisteredRoaming]);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008418E0();
    }

    v7 = 0;
  }

  return v7;
}

- (int)getSignalStrength:(int *)a3 mode:(int)a4
{
  if ([(Communicator *)self ctServerConnection])
  {
    v7 = [(Communicator *)self _getSubscriptionContext];
    v8 = [(Communicator *)self ctClient];
    v9 = [v8 getSignalStrengthInfo:v7 error:0];

    if (a4)
    {
      if (a4 != 1)
      {
LABEL_10:

        return 0;
      }

      v10 = [v9 bars];
      v11 = 20 * [v10 intValue];
    }

    else
    {
      v10 = [v9 bars];
      v11 = [v10 intValue];
    }

    *a3 = v11;

    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
  {
    sub_100841914();
  }

  return 2;
}

- (int)getSubscriberNumber:(void *)a3
{
  v4 = [(Communicator *)self _myNumber];
  v5 = v4;
  if (v4)
  {
    sub_1000DA180(v8, [v4 UTF8String]);
    sub_1000DA184(a3, v8);
    sub_1000D8E64(v8);
    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841948();
    }

    v6 = 2;
  }

  return v6;
}

- (int)getMobileSubscriberIdentity:(void *)a3
{
  if ([(Communicator *)self ctServerConnection]&& ([(Communicator *)self ctServerConnection], !_CTServerConnectionCopyMobileEquipmentInfo()) && (CFAutorelease(0), (Value = CFDictionaryGetValue(0, kCTMobileEquipmentInfoCurrentSubscriberId)) != 0))
  {
    std::string::assign(a3, [Value UTF8String]);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_10084197C();
    }

    return 2;
  }
}

- (int)getMobileEquipmentIdentity:(void *)a3
{
  if ([(Communicator *)self ctServerConnection]&& ([(Communicator *)self ctServerConnection], !_CTServerConnectionCopyMobileEquipmentInfo()) && (CFAutorelease(0), (Value = CFDictionaryGetValue(0, kCTMobileEquipmentInfoCurrentMobileId)) != 0))
  {
    std::string::assign(a3, [Value UTF8String]);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_1008419B0();
    }

    return 2;
  }
}

- (id)getCountryCodeForIdentifier:(id)a3
{
  v4 = a3;
  if ([(Communicator *)self ctServerConnection]|| ([(Communicator *)self ctClient], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_autoreleasePoolPush();
    if (v4)
    {
      [(Communicator *)self ctServerConnection];
      _CTServerConnectionCopyISOForMCC();
    }

    objc_autoreleasePoolPop(v6);
  }

  return 0;
}

- (id)getCountryCode
{
  if ([(Communicator *)self ctServerConnection]|| ([(Communicator *)self ctClient], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(Communicator *)self ctClient];
    v6 = [v5 getCurrentDataSubscriptionContextSync:0];

    v7 = [(Communicator *)self ctClient];
    v19 = 0;
    v8 = [v7 copyLastKnownMobileCountryCode:v6 error:&v19];
    v9 = v19;

    if (v9)
    {
      v10 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
      {
        sub_1008419E4(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    else
    {
      v17 = [(Communicator *)self getCountryCodeForIdentifier:v8];
    }

    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

- (id)getCountryCodeIdentifer
{
  v3 = [(Communicator *)self ctClient];

  if (v3)
  {
    v4 = [(Communicator *)self ctClient];
    v5 = [v4 getCurrentDataSubscriptionContextSync:0];

    v6 = [(Communicator *)self ctClient];
    v17 = 0;
    v7 = [v6 copyMobileCountryCode:v5 error:&v17];
    v8 = v17;

    if (v8)
    {
      v9 = qword_100BCE948;
      if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
      {
        sub_1008419E4(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)getTransmitState:(BOOL *)a3
{
  if ([(Communicator *)self ctServerConnection]&& ([(Communicator *)self ctServerConnection], !_CTServerConnectionCopyCellularTransmitState()) && (CFAutorelease(0), (Value = CFDictionaryGetValue(0, kKeyCTCellularTransmitState)) != 0))
  {
    v7 = CFEqual(Value, kCTCellularTransmitStarted);
    result = 0;
    *a3 = v7 != 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_ERROR))
    {
      sub_100841A50();
    }

    return 2;
  }

  return result;
}

- (void)setCalls:(CallList *)a3
{
  p_calls = &self->_calls;
  if (p_calls != a3)
  {
    sub_1000D8984(p_calls, a3->fCalls.__begin_, a3->fCalls.__end_, 0x4EC4EC4EC4EC4EC5 * ((a3->fCalls.__end_ - a3->fCalls.__begin_) >> 3));
  }
}

@end