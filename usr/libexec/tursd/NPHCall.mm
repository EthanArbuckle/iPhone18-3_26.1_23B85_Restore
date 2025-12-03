@interface NPHCall
+ (id)_errorAlertMessageForDisconnectedReason:(int)reason;
+ (id)callsFromTUCalls:(id)calls;
+ (id)descriptionForCallStatus:(int)status;
+ (id)descriptionForCallSupport:(int)support;
+ (int)callSupportForProvider:(id)provider isVideo:(BOOL)video;
- (BOOL)canSendLiveReply;
- (BOOL)hasFailed;
- (BOOL)hasRelaySupport;
- (BOOL)isAutoDialedSOSCall;
- (BOOL)isConferenced;
- (BOOL)isConnected;
- (BOOL)isEmergencyCall;
- (BOOL)isEndpointOnCurrentDevice;
- (BOOL)isEqual:(id)equal;
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
- (NPHCall)initWithTUCall:(id)call;
- (NPHCall)initWithTUCalls:(id)calls;
- (NSString)callDurationString;
- (NSString)displayName;
- (NSString)localizedProviderName;
- (NSString)statusString;
- (TUCall)onlyTUCall;
- (TUConversation)conversation;
- (TUDialRequest)redialPrompt;
- (TUJoinConversationRequest)rejoinPrompt;
- (id)_firstTUCall;
- (id)_outgoingStatusStringWithLabel:(id)label;
- (id)description;
- (int)disconnectedReason;
- (int)service;
- (int)status;
- (void)logWithReason:(id)reason indented:(BOOL)indented;
- (void)resumeCallFromSource:(id)source;
@end

@implementation NPHCall

- (NPHCall)initWithTUCall:(id)call
{
  callCopy = call;
  callCopy2 = call;
  v5 = [NSArray arrayWithObjects:&callCopy count:1];

  callCopy = [(NPHCall *)self initWithTUCalls:v5, callCopy];
  return callCopy;
}

- (NPHCall)initWithTUCalls:(id)calls
{
  callsCopy = calls;
  v9.receiver = self;
  v9.super_class = NPHCall;
  v5 = [(NPHCall *)&v9 init];
  if (v5)
  {
    v6 = [callsCopy sortedArrayUsingComparator:&stru_100014658];
    TUCalls = v5->_TUCalls;
    v5->_TUCalls = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  tUCalls = [(NPHCall *)self TUCalls];
  tUCalls2 = [equalCopy TUCalls];

  LOBYTE(equalCopy) = [tUCalls isEqualToArray:tUCalls2];
  return equalCopy;
}

+ (id)callsFromTUCalls:(id)calls
{
  callsCopy = calls;
  v4 = [callsCopy objectsPassingTest:&stru_100014698];
  if ([v4 count])
  {
    v5 = [[NPHCall alloc] initWithTUCalls:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [callsCopy objectsPassingTest:&stru_1000146B8];
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

    _firstTUCall = 0;
  }

  else
  {
    _firstTUCall = [(NPHCall *)self _firstTUCall];
  }

  return _firstTUCall;
}

- (BOOL)isConnected
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    isConnected = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(tUCalls);
        }

        if (isConnected)
        {
          isConnected = [*(*(&v9 + 1) + 8 * i) isConnected];
        }

        else
        {
          isConnected = 0;
        }
      }

      v4 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    isConnected = 1;
  }

  return isConnected;
}

- (BOOL)isHostedOnCurrentDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    isHostedOnCurrentDevice = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(tUCalls);
        }

        if (isHostedOnCurrentDevice)
        {
          isHostedOnCurrentDevice = [*(*(&v9 + 1) + 8 * i) isHostedOnCurrentDevice];
        }

        else
        {
          isHostedOnCurrentDevice = 0;
        }
      }

      v4 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    isHostedOnCurrentDevice = 1;
  }

  return isHostedOnCurrentDevice;
}

- (BOOL)isEmergencyCall
{
  v3 = NPHDeviceOSIsInternalInstall();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"CSLEmergencyPhoneNumber"];

  tUCalls = [(NPHCall *)self TUCalls];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000295C;
  v9[3] = &unk_100014760;
  v10 = v3;
  v9[4] = v5;
  v7 = [tUCalls hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)isSOS
{
  v3 = NPHDeviceOSIsInternalInstall();
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"CSLEmergencyPhoneNumber"];

  tUCalls = [(NPHCall *)self TUCalls];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002AC8;
  v9[3] = &unk_100014760;
  v10 = v3;
  v9[4] = v5;
  v7 = [tUCalls hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)isTinCanCall
{
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls hasObjectPassingTest:&stru_100014780];

  return v3;
}

- (BOOL)isNewtonOriginatedCall
{
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls hasObjectPassingTest:&stru_1000147A0];

  return v3;
}

- (BOOL)isKappaOriginatedCall
{
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls hasObjectPassingTest:&stru_1000147C0];

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
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls hasObjectPassingTest:&stru_1000147E0];

  return v3;
}

- (BOOL)isFaceTimeVideoCall
{
  onlyTUCall = [(NPHCall *)self onlyTUCall];
  v3 = [onlyTUCall service] == 3;

  return v3;
}

- (BOOL)isConferenced
{
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls count] > 1;

  return v3;
}

- (BOOL)hasRelaySupport
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(tUCalls);
        }

        if (![*(*(&v7 + 1) + 8 * i) hasRelaySupport:2])
        {
          LOBYTE(v3) = 0;
          goto LABEL_11;
        }
      }

      v3 = [tUCalls countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  onlyTUCall = [(NPHCall *)self onlyTUCall];
  nph_isSuppressed = [onlyTUCall nph_isSuppressed];

  if (nph_isSuppressed)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    tUCalls = [(NPHCall *)self TUCalls];
    v5 = [tUCalls hasObjectPassingTest:&stru_100014800] ^ 1;
  }

  return v5;
}

- (NSString)displayName
{
  if ([(NPHCall *)self isConferenced])
  {
    onlyTUCall = [NSBundle bundleForClass:objc_opt_class()];
    [onlyTUCall localizedStringForKey:@"CONFERENCE_CALL" value:&stru_100014D40 table:0];
  }

  else
  {
    onlyTUCall = [(NPHCall *)self onlyTUCall];
    [onlyTUCall nph_displayName];
  }
  v4 = ;

  return v4;
}

- (TUConversation)conversation
{
  onlyTUCall = [(NPHCall *)self onlyTUCall];
  nph_conversation = [onlyTUCall nph_conversation];

  return nph_conversation;
}

- (NSString)callDurationString
{
  if ([(NPHCall *)self isConnected])
  {
    tUCalls = [(NPHCall *)self TUCalls];
    v4 = [tUCalls max:&stru_100014840];

    callDurationString = [v4 callDurationString];
  }

  else
  {
    callDurationString = 0;
  }

  return callDurationString;
}

- (int)status
{
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  status = [_firstTUCall status];

  return status;
}

- (int)disconnectedReason
{
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  disconnectedReason = [_firstTUCall disconnectedReason];

  return disconnectedReason;
}

- (BOOL)isEndpointOnCurrentDevice
{
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  isEndpointOnCurrentDevice = [_firstTUCall isEndpointOnCurrentDevice];

  return isEndpointOnCurrentDevice;
}

- (int)service
{
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  service = [_firstTUCall service];

  return service;
}

- (NSString)statusString
{
  tUCalls = [(NPHCall *)self TUCalls];
  if ([tUCalls count] == 1)
  {
    _firstTUCall = [(NPHCall *)self _firstTUCall];
    localizedLabel = [_firstTUCall localizedLabel];
  }

  else
  {
    localizedLabel = 0;
  }

  status = [(NPHCall *)self status];
  if (status <= 2)
  {
    switch(status)
    {
      case 0:
        v7 = [NSBundle bundleForClass:objc_opt_class()];
        v8 = v7;
        v9 = @"CALL_STATUS_IDLE";
        goto LABEL_24;
      case 1:
        callDurationString = [(NPHCall *)self callDurationString];
        v8 = callDurationString;
        if (!callDurationString)
        {
          _firstTUCall2 = [(NPHCall *)self _firstTUCall];
          if ([_firstTUCall2 isOutgoing])
          {
            v15 = [(NPHCall *)self _outgoingStatusStringWithLabel:localizedLabel];
          }

          else
          {
            v18 = [NSBundle bundleForClass:objc_opt_class()];
            v15 = [v18 localizedStringForKey:@"CALL_CONNECTING" value:&stru_100014D40 table:0];
          }

          goto LABEL_26;
        }

        v13 = callDurationString;
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

  if (status != 3)
  {
    if (status == 5)
    {
      wasDeclined = [(NPHCall *)self wasDeclined];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      if ((wasDeclined & 1) == 0)
      {
        v9 = @"CALL_STATUS_CALL_ENDING";
        goto LABEL_23;
      }
    }

    else
    {
      if (status != 6)
      {
LABEL_16:
        if (localizedLabel)
        {
          localizedProviderName = localizedLabel;
        }

        else
        {
          localizedProviderName = [(NPHCall *)self localizedProviderName];
        }

        goto LABEL_28;
      }

      wasDeclined2 = [(NPHCall *)self wasDeclined];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      if ((wasDeclined2 & 1) == 0)
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

  localizedProviderName = [(NPHCall *)self _outgoingStatusStringWithLabel:localizedLabel];
LABEL_28:
  v15 = localizedProviderName;
LABEL_29:

  return v15;
}

- (BOOL)wantsHoldMusic
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    wantsHoldMusic = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(tUCalls);
        }

        if (wantsHoldMusic)
        {
          wantsHoldMusic = [*(*(&v9 + 1) + 8 * i) wantsHoldMusic];
        }

        else
        {
          wantsHoldMusic = 0;
        }
      }

      v4 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    wantsHoldMusic = 1;
  }

  return wantsHoldMusic;
}

- (TUDialRequest)redialPrompt
{
  tUCalls = [(NPHCall *)self TUCalls];
  v4 = [tUCalls count];

  if (v4 == 1)
  {
    onlyTUCall = [(NPHCall *)self onlyTUCall];
    dialRequestForRedial = [onlyTUCall dialRequestForRedial];
    v7 = +[NPHCall _errorAlertMessageForDisconnectedReason:](NPHCall, "_errorAlertMessageForDisconnectedReason:", [onlyTUCall disconnectedReason]);
    [dialRequestForRedial setNph_errorAlertMessage:v7];
  }

  else
  {
    dialRequestForRedial = 0;
  }

  return dialRequestForRedial;
}

- (TUJoinConversationRequest)rejoinPrompt
{
  tUCalls = [(NPHCall *)self TUCalls];
  v4 = [tUCalls count];

  if (v4 == 1)
  {
    conversation = [(NPHCall *)self conversation];
    if (conversation)
    {
      nph_lastAssociatedConversation = conversation;
LABEL_5:
      v8 = [[TUJoinConversationRequest alloc] initWithConversation:nph_lastAssociatedConversation];

      goto LABEL_7;
    }

    onlyTUCall = [(NPHCall *)self onlyTUCall];
    nph_lastAssociatedConversation = [onlyTUCall nph_lastAssociatedConversation];

    if (nph_lastAssociatedConversation)
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
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  if ([_firstTUCall status] == 5 && objc_msgSend(_firstTUCall, "isIncoming"))
  {
    v3 = [_firstTUCall isConnecting] ^ 1;
  }

  else
  {
    LOBYTE(v3) = [_firstTUCall wasDeclined];
  }

  return v3;
}

- (BOOL)hasFailed
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v3 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    nph_hasFailed = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(tUCalls);
        }

        if (nph_hasFailed)
        {
          nph_hasFailed = 1;
        }

        else
        {
          nph_hasFailed = [*(*(&v9 + 1) + 8 * i) nph_hasFailed];
        }
      }

      v4 = [tUCalls countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    nph_hasFailed = 0;
  }

  return nph_hasFailed;
}

- (void)resumeCallFromSource:(id)source
{
  sourceCopy = source;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v6 = [tUCalls countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(tUCalls);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sub_100001C24();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = sourceCopy;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: [TUCallCenter.sharedInstance unholdCall:] to %@", buf, 0x16u);
        }

        v12 = +[TUCallCenter sharedInstance];
        [v12 unholdCall:v10];
      }

      v7 = [tUCalls countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v7);
  }
}

+ (int)callSupportForProvider:(id)provider isVideo:(BOOL)video
{
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider])
  {
    v5 = +[TUCallCapabilities telephonyCallSupport];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([providerCopy isFaceTimeProvider])
  {
    v5 = +[TUCallCapabilities faceTimeAudioCallSupport];
    goto LABEL_5;
  }

  if ([providerCopy isSystemProvider])
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
  _firstTUCall = [(NPHCall *)self _firstTUCall];
  provider = [_firstTUCall provider];
  if ([provider isTelephonyProvider])
  {
    v4 = 0;
  }

  else
  {
    if ([provider isFaceTimeProvider])
    {
      [_firstTUCall serviceDisplayString];
    }

    else
    {
      [provider localizedName];
    }
    v4 = ;
  }

  return v4;
}

+ (id)descriptionForCallStatus:(int)status
{
  if (status > 6)
  {
    return @"TUCallStatusSending";
  }

  else
  {
    return *(&off_100014860 + status);
  }
}

+ (id)descriptionForCallSupport:(int)support
{
  if ((support - 1) > 2)
  {
    return @"TUCallSupportNone";
  }

  else
  {
    return *(&off_100014898 + (support - 1));
  }
}

- (void)logWithReason:(id)reason indented:(BOOL)indented
{
  indentedCopy = indented;
  reasonCopy = reason;
  v7 = &stru_100014D40;
  if (indentedCopy)
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
    v29 = reasonCopy;
    v30 = 2048;
    selfCopy = self;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@%@ NPHCall %p status: %@", buf, 0x2Au);
  }

  v19 = v9;
  v20 = reasonCopy;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  tUCalls = [(NPHCall *)self TUCalls];
  v12 = [tUCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(tUCalls);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = sub_100001C24();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          nph_description = [v16 nph_description];
          *buf = 138412546;
          v27 = v8;
          v28 = 2112;
          v29 = nph_description;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@\t%@", buf, 0x16u);
        }
      }

      v13 = [tUCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  tUCalls = [(NPHCall *)self TUCalls];
  v6 = [tUCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(tUCalls);
        }

        nph_description = [*(*(&v12 + 1) + 8 * i) nph_description];
        [v4 appendFormat:@"\t%@\n", nph_description];
      }

      v7 = [tUCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_outgoingStatusStringWithLabel:(id)label
{
  labelCopy = label;
  service = [(NPHCall *)self service];
  if (service < 2)
  {
    if (!labelCopy)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      self = [v6 localizedStringForKey:@"CALL_STATUS_CALLING" value:&stru_100014D40 table:0];
      goto LABEL_7;
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_STATUS_CALLING_WITH_LABEL" value:&stru_100014D40 table:0];
    self = [NSString stringWithFormat:v7, labelCopy];
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  if (service - 2 <= 1)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_STATUS_NONTELEPHONY_CALLING" value:&stru_100014D40 table:0];
    localizedProviderName = [(NPHCall *)self localizedProviderName];
    self = [NSString stringWithFormat:v7, localizedProviderName];

    goto LABEL_6;
  }

LABEL_8:

  return self;
}

- (id)_firstTUCall
{
  tUCalls = [(NPHCall *)self TUCalls];
  firstObject = [tUCalls firstObject];

  return firstObject;
}

+ (id)_errorAlertMessageForDisconnectedReason:(int)reason
{
  if (reason == 16)
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
  onlyTUCall = [(NPHCall *)self onlyTUCall];
  if ([onlyTUCall status] == 1)
  {
    onlyTUCall2 = [(NPHCall *)self onlyTUCall];
    smartHoldingSession = [onlyTUCall2 smartHoldingSession];
    if (smartHoldingSession)
    {
      onlyTUCall3 = [(NPHCall *)self onlyTUCall];
      smartHoldingSession2 = [onlyTUCall3 smartHoldingSession];
      if ([smartHoldingSession2 state])
      {
        onlyTUCall4 = [(NPHCall *)self onlyTUCall];
        smartHoldingSession3 = [onlyTUCall4 smartHoldingSession];
        v10 = [smartHoldingSession3 state] == 3;
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
  onlyTUCall = [(NPHCall *)self onlyTUCall];
  if ([onlyTUCall status] == 1)
  {
    onlyTUCall2 = [(NPHCall *)self onlyTUCall];
    isScreening = [onlyTUCall2 isScreening];
  }

  else
  {
    isScreening = 0;
  }

  return isScreening;
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

  onlyTUCall = [(NPHCall *)self onlyTUCall];
  isReceptionistCapable = [onlyTUCall isReceptionistCapable];

  return v3 & isReceptionistCapable;
}

- (BOOL)isScreeningSupported
{
  if (+[NPHFeatureFlags isLiveVoicemailEnabled](NPHFeatureFlags, "isLiveVoicemailEnabled") || (v3 = +[NPHFeatureFlags isLiveRepliesEnabled]))
  {
    onlyTUCall = [(NPHCall *)self onlyTUCall];
    isEligibleForManualScreening = [onlyTUCall isEligibleForManualScreening];

    LOBYTE(v3) = isEligibleForManualScreening & ![(NPHCall *)self isHostedOnCurrentDevice];
  }

  return v3;
}

- (BOOL)isLiveReplyCapable
{
  isReceptionistDisclosedRemoteCall = [(NPHCall *)self isReceptionistDisclosedRemoteCall];
  if (isReceptionistDisclosedRemoteCall)
  {
    onlyTUCall = [(NPHCall *)self onlyTUCall];
    isHostedOnCurrentDevice = [onlyTUCall isHostedOnCurrentDevice];

    status = [(NPHCall *)self status];
    onlyTUCall2 = [(NPHCall *)self onlyTUCall];
    contactIdentifiers = [onlyTUCall2 contactIdentifiers];

    if (contactIdentifiers)
    {
      LOBYTE(isReceptionistDisclosedRemoteCall) = (status == 4) & ~isHostedOnCurrentDevice;
    }

    else
    {
      LOBYTE(isReceptionistDisclosedRemoteCall) = 0;
    }
  }

  return isReceptionistDisclosedRemoteCall;
}

- (BOOL)canSendLiveReply
{
  isReceptionistDisclosedRemoteCall = [(NPHCall *)self isReceptionistDisclosedRemoteCall];
  if (isReceptionistDisclosedRemoteCall)
  {
    onlyTUCall = [(NPHCall *)self onlyTUCall];
    isKnownCaller = [onlyTUCall isKnownCaller];

    onlyTUCall2 = [(NPHCall *)self onlyTUCall];
    receptionistState = [onlyTUCall2 receptionistState];

    if (isKnownCaller)
    {
      LOBYTE(isReceptionistDisclosedRemoteCall) = receptionistState == 1;
    }

    else
    {
      LOBYTE(isReceptionistDisclosedRemoteCall) = receptionistState == 3;
    }
  }

  return isReceptionistDisclosedRemoteCall;
}

@end