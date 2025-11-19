@interface NPHCall
+ (id)_errorAlertMessageForDisconnectedReason:(int)a3;
+ (id)callsFromTUCalls:(id)a3;
+ (id)descriptionForCallStatus:(int)a3;
+ (id)descriptionForCallSupport:(int)a3;
+ (int)callSupportForProvider:(id)a3 isVideo:(BOOL)a4;
- (BOOL)canSendLiveReply;
- (BOOL)hasFailed;
- (BOOL)hasRelaySupport;
- (BOOL)isAutoDialedSOSCall;
- (BOOL)isConferenced;
- (BOOL)isConnected;
- (BOOL)isEmergencyCall;
- (BOOL)isEndpointOnCurrentDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFaceTimeVideoCall;
- (BOOL)isHostedOnCurrentDevice;
- (BOOL)isKappaOriginatedCall;
- (BOOL)isLiveReplyCapable;
- (BOOL)isNewtonOriginatedCall;
- (BOOL)isReceptionistDisclosedRemoteCall;
- (BOOL)isSOS;
- (BOOL)isSOSFlowCall;
- (BOOL)isScreeningActive;
- (BOOL)isScreeningSupported;
- (BOOL)isSmartHoldingActive;
- (BOOL)isSupported;
- (BOOL)isTinCanCall;
- (BOOL)wantsHoldMusic;
- (BOOL)wasDeclined;
- (NPHCall)initWithTUCall:(id)a3;
- (NPHCall)initWithTUCalls:(id)a3;
- (NSString)callDurationString;
- (NSString)displayName;
- (NSString)localizedProviderName;
- (NSString)statusString;
- (TUCall)onlyTUCall;
- (TUConversation)conversation;
- (TUDialRequest)redialPrompt;
- (TUJoinConversationRequest)rejoinPrompt;
- (id)_firstTUCall;
- (id)_outgoingStatusStringWithLabel:(id)a3;
- (id)description;
- (int)disconnectedReason;
- (int)service;
- (int)status;
- (void)logWithReason:(id)a3 indented:(BOOL)a4;
- (void)resumeCallFromSource:(id)a3;
@end

@implementation NPHCall

- (NPHCall)initWithTUCall:(id)a3
{
  v8 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [(NPHCall *)self initWithTUCalls:v5, v8];
  return v6;
}

- (NPHCall)initWithTUCalls:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPHCall;
  v5 = [(NPHCall *)&v9 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingComparator:&stru_100014658];
    TUCalls = v5->_TUCalls;
    v5->_TUCalls = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(NPHCall *)self TUCalls];
  v6 = [v4 TUCalls];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

+ (id)callsFromTUCalls:(id)a3
{
  v3 = a3;
  v4 = [v3 objectsPassingTest:&stru_100014698];
  if ([v4 count])
  {
    v5 = [[NPHCall alloc] initWithTUCalls:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectsPassingTest:&stru_1000146B8];
  v7 = [v6 nph_map:&stru_1000146F8];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 arrayByAddingObject:v5];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (TUCall)onlyTUCall
{
  if (NPHDeviceOSIsInternalInstall() && (-[NPHCall TUCalls](self, "TUCalls"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 != 1))
  {
    v6 = sub_100001C24();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000099F0(v6);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(NPHCall *)self _firstTUCall];
  }

  return v5;
}

- (BOOL)isConnected
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v6 = [*(*(&v9 + 1) + 8 * i) isConnected];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isHostedOnCurrentDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v6 = [*(*(&v9 + 1) + 8 * i) isHostedOnCurrentDevice];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEmergencyCall
{
  v3 = NPHDeviceOSIsInternalInstall();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"CSLEmergencyPhoneNumber"];

  v6 = [(NPHCall *)self TUCalls];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000295C;
  v9[3] = &unk_100014760;
  v10 = v3;
  v9[4] = v5;
  v7 = [v6 hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)isSOS
{
  v3 = NPHDeviceOSIsInternalInstall();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"CSLEmergencyPhoneNumber"];

  v6 = [(NPHCall *)self TUCalls];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002AC8;
  v9[3] = &unk_100014760;
  v10 = v3;
  v9[4] = v5;
  v7 = [v6 hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)isTinCanCall
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 hasObjectPassingTest:&stru_100014780];

  return v3;
}

- (BOOL)isNewtonOriginatedCall
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 hasObjectPassingTest:&stru_1000147A0];

  return v3;
}

- (BOOL)isKappaOriginatedCall
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 hasObjectPassingTest:&stru_1000147C0];

  return v3;
}

- (BOOL)isSOSFlowCall
{
  if ([(NPHCall *)self isSOS]|| [(NPHCall *)self isNewtonOriginatedCall])
  {
    return 1;
  }

  return [(NPHCall *)self isKappaOriginatedCall];
}

- (BOOL)isAutoDialedSOSCall
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 hasObjectPassingTest:&stru_1000147E0];

  return v3;
}

- (BOOL)isFaceTimeVideoCall
{
  v2 = [(NPHCall *)self onlyTUCall];
  v3 = [v2 service] == 3;

  return v3;
}

- (BOOL)isConferenced
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 count] > 1;

  return v3;
}

- (BOOL)hasRelaySupport
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) hasRelaySupport:2])
        {
          LOBYTE(v3) = 0;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    LOBYTE(v3) = 1;
  }

LABEL_11:

  return v3;
}

- (BOOL)isSupported
{
  v3 = [(NPHCall *)self onlyTUCall];
  v4 = [v3 nph_isSuppressed];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(NPHCall *)self TUCalls];
    v5 = [v6 hasObjectPassingTest:&stru_100014800] ^ 1;
  }

  return v5;
}

- (NSString)displayName
{
  if ([(NPHCall *)self isConferenced])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"CONFERENCE_CALL" value:&stru_100014D40 table:0];
  }

  else
  {
    v3 = [(NPHCall *)self onlyTUCall];
    [v3 nph_displayName];
  }
  v4 = ;

  return v4;
}

- (TUConversation)conversation
{
  v2 = [(NPHCall *)self onlyTUCall];
  v3 = [v2 nph_conversation];

  return v3;
}

- (NSString)callDurationString
{
  if ([(NPHCall *)self isConnected])
  {
    v3 = [(NPHCall *)self TUCalls];
    v4 = [v3 max:&stru_100014840];

    v5 = [v4 callDurationString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)status
{
  v2 = [(NPHCall *)self _firstTUCall];
  v3 = [v2 status];

  return v3;
}

- (int)disconnectedReason
{
  v2 = [(NPHCall *)self _firstTUCall];
  v3 = [v2 disconnectedReason];

  return v3;
}

- (BOOL)isEndpointOnCurrentDevice
{
  v2 = [(NPHCall *)self _firstTUCall];
  v3 = [v2 isEndpointOnCurrentDevice];

  return v3;
}

- (int)service
{
  v2 = [(NPHCall *)self _firstTUCall];
  v3 = [v2 service];

  return v3;
}

- (NSString)statusString
{
  v3 = [(NPHCall *)self TUCalls];
  if ([v3 count] == 1)
  {
    v4 = [(NPHCall *)self _firstTUCall];
    v5 = [v4 localizedLabel];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NPHCall *)self status];
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
        v7 = [NSBundle bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"CALL_STATUS_IDLE";
        goto LABEL_24;
      case 1:
        v12 = [(NPHCall *)self callDurationString];
        v8 = v12;
        if (!v12)
        {
          v17 = [(NPHCall *)self _firstTUCall];
          if ([v17 isOutgoing])
          {
            v15 = [(NPHCall *)self _outgoingStatusStringWithLabel:v5];
          }

          else
          {
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v15 = [v18 localizedStringForKey:@"CALL_CONNECTING" value:&stru_100014D40 table:0];
          }

          goto LABEL_26;
        }

        v13 = v12;
LABEL_25:
        v15 = v13;
LABEL_26:

        goto LABEL_29;
      case 2:
        v7 = [NSBundle bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"CALL_STATUS_HELD";
LABEL_24:
        v13 = [v7 localizedStringForKey:v9 value:&stru_100014D40 table:0];
        goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (v6 != 3)
  {
    if (v6 == 5)
    {
      v14 = [(NPHCall *)self wasDeclined];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      if ((v14 & 1) == 0)
      {
        v9 = @"CALL_STATUS_CALL_ENDING";
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 != 6)
      {
LABEL_16:
        if (v5)
        {
          v11 = v5;
        }

        else
        {
          v11 = [(NPHCall *)self localizedProviderName];
        }

        goto LABEL_28;
      }

      v10 = [(NPHCall *)self wasDeclined];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      if ((v10 & 1) == 0)
      {
        v9 = @"CALL_STATUS_CALL_ENDED";
LABEL_23:
        v7 = v8;
        goto LABEL_24;
      }
    }

    v9 = @"CALL_DECLINED";
    goto LABEL_23;
  }

  v11 = [(NPHCall *)self _outgoingStatusStringWithLabel:v5];
LABEL_28:
  v15 = v11;
LABEL_29:

  return v15;
}

- (BOOL)wantsHoldMusic
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (v6)
        {
          v6 = [*(*(&v9 + 1) + 8 * i) wantsHoldMusic];
        }

        else
        {
          v6 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (TUDialRequest)redialPrompt
{
  v3 = [(NPHCall *)self TUCalls];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(NPHCall *)self onlyTUCall];
    v6 = [v5 dialRequestForRedial];
    v7 = +[NPHCall _errorAlertMessageForDisconnectedReason:](NPHCall, "_errorAlertMessageForDisconnectedReason:", [v5 disconnectedReason]);
    [v6 setNph_errorAlertMessage:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TUJoinConversationRequest)rejoinPrompt
{
  v3 = [(NPHCall *)self TUCalls];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(NPHCall *)self conversation];
    if (v5)
    {
      v6 = v5;
LABEL_5:
      v8 = [[TUJoinConversationRequest alloc] initWithConversation:v6];

      goto LABEL_7;
    }

    v7 = [(NPHCall *)self onlyTUCall];
    v6 = [v7 nph_lastAssociatedConversation];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)wasDeclined
{
  v2 = [(NPHCall *)self _firstTUCall];
  if ([v2 status] == 5 && objc_msgSend(v2, "isIncoming"))
  {
    v3 = [v2 isConnecting] ^ 1;
  }

  else
  {
    LOBYTE(v3) = [v2 wasDeclined];
  }

  return v3;
}

- (BOOL)hasFailed
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (v5)
        {
          v5 = 1;
        }

        else
        {
          v5 = [*(*(&v9 + 1) + 8 * i) nph_hasFailed];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resumeCallFromSource:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NPHCall *)self TUCalls];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sub_100001C24();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: [TUCallCenter.sharedInstance unholdCall:] to %@", buf, 0x16u);
        }

        v12 = +[TUCallCenter sharedInstance];
        [v12 unholdCall:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v7);
  }
}

+ (int)callSupportForProvider:(id)a3 isVideo:(BOOL)a4
{
  v4 = a3;
  if ([v4 isTelephonyProvider])
  {
    v5 = +[TUCallCapabilities telephonyCallSupport];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 isFaceTimeProvider])
  {
    v5 = +[TUCallCapabilities faceTimeAudioCallSupport];
    goto LABEL_5;
  }

  if ([v4 isSystemProvider])
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

LABEL_9:

  return v6;
}

- (NSString)localizedProviderName
{
  v2 = [(NPHCall *)self _firstTUCall];
  v3 = [v2 provider];
  if ([v3 isTelephonyProvider])
  {
    v4 = 0;
  }

  else
  {
    if ([v3 isFaceTimeProvider])
    {
      [v2 serviceDisplayString];
    }

    else
    {
      [v3 localizedName];
    }
    v4 = ;
  }

  return v4;
}

+ (id)descriptionForCallStatus:(int)a3
{
  if (a3 > 6)
  {
    return @"TUCallStatusSending";
  }

  else
  {
    return *(&off_100014860 + a3);
  }
}

+ (id)descriptionForCallSupport:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"TUCallSupportNone";
  }

  else
  {
    return *(&off_100014898 + (a3 - 1));
  }
}

- (void)logWithReason:(id)a3 indented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = &stru_100014D40;
  if (v4)
  {
    v7 = @"\t";
  }

  v8 = v7;
  v9 = [objc_opt_class() descriptionForCallStatus:{-[NPHCall status](self, "status")}];
  v10 = sub_100001C24();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v27 = v8;
    v28 = 2112;
    v29 = v6;
    v30 = 2048;
    v31 = self;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@%@ NPHCall %p status: %@", buf, 0x2Au);
  }

  v19 = v9;
  v20 = v6;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(NPHCall *)self TUCalls];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = sub_100001C24();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 nph_description];
          *buf = 138412546;
          v27 = v8;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@\t%@", buf, 0x16u);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)description
{
  v3 = [objc_opt_class() descriptionForCallStatus:{-[NPHCall status](self, "status")}];
  v4 = [NSMutableString stringWithFormat:@"NPHCall %p: status: %@\n", self, v3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NPHCall *)self TUCalls];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) nph_description];
        [v4 appendFormat:@"\t%@\n", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_outgoingStatusStringWithLabel:(id)a3
{
  v4 = a3;
  v5 = [(NPHCall *)self service];
  if (v5 < 2)
  {
    if (!v4)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      self = [v6 localizedStringForKey:@"CALL_STATUS_CALLING" value:&stru_100014D40 table:0];
      goto LABEL_7;
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_STATUS_CALLING_WITH_LABEL" value:&stru_100014D40 table:0];
    self = [NSString stringWithFormat:v7, v4];
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  if (v5 - 2 <= 1)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_STATUS_NONTELEPHONY_CALLING" value:&stru_100014D40 table:0];
    v8 = [(NPHCall *)self localizedProviderName];
    self = [NSString stringWithFormat:v7, v8];

    goto LABEL_6;
  }

LABEL_8:

  return self;
}

- (id)_firstTUCall
{
  v2 = [(NPHCall *)self TUCalls];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)_errorAlertMessageForDisconnectedReason:(int)a3
{
  if (a3 == 16)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"CALL_FAILED_CLIENT_DEVICE_BUSY" value:&stru_100014D40 table:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSmartHoldingActive
{
  v3 = [(NPHCall *)self onlyTUCall];
  if ([v3 status] == 1)
  {
    v4 = [(NPHCall *)self onlyTUCall];
    v5 = [v4 smartHoldingSession];
    if (v5)
    {
      v6 = [(NPHCall *)self onlyTUCall];
      v7 = [v6 smartHoldingSession];
      if ([v7 state])
      {
        v8 = [(NPHCall *)self onlyTUCall];
        v9 = [v8 smartHoldingSession];
        v10 = [v9 state] == 3;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isScreeningActive
{
  v3 = [(NPHCall *)self onlyTUCall];
  if ([v3 status] == 1)
  {
    v4 = [(NPHCall *)self onlyTUCall];
    v5 = [v4 isScreening];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isReceptionistDisclosedRemoteCall
{
  if (+[NPHFeatureFlags isLiveVoicemailEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = +[NPHFeatureFlags isLiveRepliesEnabled];
  }

  v4 = [(NPHCall *)self onlyTUCall];
  v5 = [v4 isReceptionistCapable];

  return v3 & v5;
}

- (BOOL)isScreeningSupported
{
  if (+[NPHFeatureFlags isLiveVoicemailEnabled](NPHFeatureFlags, "isLiveVoicemailEnabled") || (v3 = +[NPHFeatureFlags isLiveRepliesEnabled]))
  {
    v4 = [(NPHCall *)self onlyTUCall];
    v5 = [v4 isEligibleForManualScreening];

    LOBYTE(v3) = v5 & ![(NPHCall *)self isHostedOnCurrentDevice];
  }

  return v3;
}

- (BOOL)isLiveReplyCapable
{
  v3 = [(NPHCall *)self isReceptionistDisclosedRemoteCall];
  if (v3)
  {
    v4 = [(NPHCall *)self onlyTUCall];
    v5 = [v4 isHostedOnCurrentDevice];

    v6 = [(NPHCall *)self status];
    v7 = [(NPHCall *)self onlyTUCall];
    v8 = [v7 contactIdentifiers];

    if (v8)
    {
      LOBYTE(v3) = (v6 == 4) & ~v5;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)canSendLiveReply
{
  v3 = [(NPHCall *)self isReceptionistDisclosedRemoteCall];
  if (v3)
  {
    v4 = [(NPHCall *)self onlyTUCall];
    v5 = [v4 isKnownCaller];

    v6 = [(NPHCall *)self onlyTUCall];
    v7 = [v6 receptionistState];

    if (v5)
    {
      LOBYTE(v3) = v7 == 1;
    }

    else
    {
      LOBYTE(v3) = v7 == 3;
    }
  }

  return v3;
}

@end