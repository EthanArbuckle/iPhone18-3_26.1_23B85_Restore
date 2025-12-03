@interface NPHCallConfiguration
+ (void)log:(id)log withReason:(id)reason;
- (BOOL)hasEmergencyCall;
- (BOOL)hasHostedCall;
- (NPHCall)activeCall;
- (NPHCall)blockedCall;
- (NPHCall)callToAnswerOnPhone;
- (NPHCall)currentCall;
- (NPHCall)incomingCall;
- (NPHCall)remoteCall;
- (NPHCall)screeningCall;
- (NPHCall)sendingCall;
- (NPHCall)smartHoldingCall;
- (NPHCallConfiguration)init;
- (NPHCallConfiguration)initWithCalls:(id)calls andCallsOnDefaultPairedDevice:(id)device source:(id)source;
- (NSArray)callsEnded;
- (NSArray)callsEnding;
- (NSArray)callsFailed;
- (NSArray)callsNotDeclined;
- (id)copyWithCallsPassingTest:(id)test;
- (id)description;
- (id)mirrored;
- (void)_log;
- (void)disconnectAllCallsWithSource:(id)source;
- (void)disconnectAllNonEmergencyCallsWithSource:(id)source;
- (void)disconnectCurrentCall;
@end

@implementation NPHCallConfiguration

- (NPHCallConfiguration)init
{
  v3 = [[NPHCallConfigurationChangeSource alloc] initWithString:@"initial"];
  v4 = [(NPHCallConfiguration *)self initWithCalls:&__NSArray0__struct andCallsOnDefaultPairedDevice:&__NSArray0__struct source:v3];

  return v4;
}

- (NPHCallConfiguration)initWithCalls:(id)calls andCallsOnDefaultPairedDevice:(id)device source:(id)source
{
  callsCopy = calls;
  deviceCopy = device;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = NPHCallConfiguration;
  v12 = [(NPHCallConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calls, calls);
    objc_storeStrong(&v13->_callsOnDefaultPairedDevice, device);
    objc_storeStrong(&v13->_source, source);
  }

  return v13;
}

- (NSArray)callsEnding
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014918];

  return v3;
}

- (NSArray)callsEnded
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014938];

  return v3;
}

- (NSArray)callsNotDeclined
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014958];

  return v3;
}

- (NPHCall)incomingCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014978];

  return v3;
}

- (NPHCall)activeCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014998];

  return v3;
}

- (NPHCall)sendingCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_1000149B8];

  return v3;
}

- (NPHCall)currentCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [NPHCall currentCallFromCalls:calls];

  return v3;
}

- (NPHCall)remoteCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_1000149D8];
  v5 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_1000149F8];
  firstObject = [callsOnDefaultPairedDevice firstObject];
  callHandingOffToWatch = [(NPHCallConfiguration *)self callHandingOffToWatch];
  v8 = callHandingOffToWatch;
  if (firstObject)
  {
    v9 = firstObject;
  }

  else
  {
    v9 = callHandingOffToWatch;
  }

  if (v5)
  {
    v9 = v5;
  }

  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

- (NPHCall)callToAnswerOnPhone
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v3 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014A18];

  return v3;
}

- (NSArray)callsFailed
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014A38];

  return v3;
}

- (NPHCall)blockedCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014A58];

  return v3;
}

- (NPHCall)screeningCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014A78];

  if (!v4)
  {
    calls = [(NPHCallConfiguration *)self calls];
    v4 = [calls firstObjectPassingTest:&stru_100014A98];
  }

  return v4;
}

- (NPHCall)smartHoldingCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014AB8];

  if (!v4)
  {
    calls = [(NPHCallConfiguration *)self calls];
    v4 = [calls firstObjectPassingTest:&stru_100014AD8];
  }

  return v4;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = NPHCallConfiguration;
  v3 = [(NPHCallConfiguration *)&v14 description];
  incomingCall = [(NPHCallConfiguration *)self incomingCall];
  v5 = [incomingCall description];
  calls = [(NPHCallConfiguration *)self calls];
  v7 = [calls description];
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [callsOnDefaultPairedDevice description];
  callToAnswerOnPhone = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  v11 = [callToAnswerOnPhone description];
  v12 = [NSString stringWithFormat:@"%@, incoming %@, calls %@, callsOnDefaultPairedDevice %@, callToAnswerOnPhone %@", v3, v5, v7, v9, v11];

  return v12;
}

- (BOOL)hasEmergencyCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls hasObjectPassingTest:&stru_100014AF8];

  return v3;
}

- (BOOL)hasHostedCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls hasObjectPassingTest:&stru_100014B18];

  return v3;
}

- (void)disconnectAllCallsWithSource:(id)source
{
  sourceCopy = source;
  calls = [(NPHCallConfiguration *)self calls];
  v6 = [calls objectsPassingTest:&stru_100014B38];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), sourceCopy}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)disconnectCurrentCall
{
  currentCall = [(NPHCallConfiguration *)self currentCall];
  calls = [(NPHCallConfiguration *)self calls];
  if ([calls count] == 1)
  {
    v5 = [NSString stringWithFormat:@"%s", "[NPHCallConfiguration disconnectCurrentCall]"];
    [currentCall disconnectWithReason:0 fromSource:v5];
  }

  else
  {
    v6 = sub_100001C24();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[NPHCallConfiguration disconnectCurrentCall]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: TUCallCenter.sharedInstance disconnectCurrentCallAndActivateHeld", buf, 0xCu);
    }

    v5 = +[TUCallCenter sharedInstance];
    [v5 disconnectCurrentCallAndActivateHeld];
  }
}

- (id)copyWithCallsPassingTest:(id)test
{
  testCopy = test;
  v5 = [NPHCallConfiguration alloc];
  calls = [(NPHCallConfiguration *)self calls];
  v7 = [calls objectsPassingTest:testCopy];
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [callsOnDefaultPairedDevice objectsPassingTest:testCopy];

  source = [(NPHCallConfiguration *)self source];
  v11 = [(NPHCallConfiguration *)v5 initWithCalls:v7 andCallsOnDefaultPairedDevice:v9 source:source];

  return v11;
}

- (id)mirrored
{
  v3 = NPHIsCerberusEnabled();
  v4 = [NPHCallConfiguration alloc];
  if (v3)
  {
    calls = [(NPHCallConfiguration *)self calls];
    callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    v7 = [calls arrayByAddingObjectsFromArray:callsOnDefaultPairedDevice];
    source = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:v7 andCallsOnDefaultPairedDevice:&__NSArray0__struct source:source];
  }

  else
  {
    calls = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:calls andCallsOnDefaultPairedDevice:&__NSArray0__struct source:callsOnDefaultPairedDevice];
  }

  return v9;
}

- (void)disconnectAllNonEmergencyCallsWithSource:(id)source
{
  sourceCopy = source;
  calls = [(NPHCallConfiguration *)self calls];
  v6 = [calls objectsPassingTest:&stru_100014B58];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), sourceCopy}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)log:(id)log withReason:(id)reason
{
  logCopy = log;
  reasonCopy = reason;
  v7 = sub_100001C24();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logCopy = [NSString stringWithValidatedFormat:reasonCopy validFormatSpecifiers:@"%p" error:0, logCopy];
    *buf = 138412290;
    v12 = logCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (logCopy)
  {
    [logCopy _log];
  }

  else
  {
    v9 = sub_100001C24();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\t<none>", buf, 2u);
    }
  }

  v10 = sub_100001C24();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }
}

- (void)_log
{
  incomingCall = [(NPHCallConfiguration *)self incomingCall];
  [incomingCall logWithReason:@"incomingCall" indented:1];

  callToAnswerOnPhone = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  [callToAnswerOnPhone logWithReason:@"callToAnswerOnPhone" indented:1];

  callEnded = [(NPHCallConfiguration *)self callEnded];
  [callEnded logWithReason:@"callEnded" indented:1];

  callHandingOff = [(NPHCallConfiguration *)self callHandingOff];
  [callHandingOff logWithReason:@"callHandingOff" indented:1];

  callHandingOffToWatch = [(NPHCallConfiguration *)self callHandingOffToWatch];
  [callHandingOffToWatch logWithReason:@"callHandingOffToWatch" indented:1];

  dialPrompt = [(NPHCallConfiguration *)self dialPrompt];
  [dialPrompt nph_logWithReason:@"dialPrompt" indented:1];

  redialPrompt = [(NPHCallConfiguration *)self redialPrompt];
  [redialPrompt nph_logWithReason:@"redialPrompt" indented:1];

  rejoinPrompt = [(NPHCallConfiguration *)self rejoinPrompt];
  [rejoinPrompt nph_logWithReason:@"rejoinPrompt" indented:1];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  calls = [(NPHCallConfiguration *)self calls];
  v12 = [calls countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v34;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(calls);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v14 = (v17 + 1);
        v19 = [NSString stringWithFormat:@"call #%d ", v17];
        [v18 logWithReason:v19 indented:1];

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [calls countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v21 = [callsOnDefaultPairedDevice countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v30;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(callsOnDefaultPairedDevice);
        }

        v27 = *(*(&v29 + 1) + 8 * v25);
        v23 = (v26 + 1);
        v28 = [NSString stringWithFormat:@"callOnDefaultPairedDevice #%d ", v26];
        [v27 logWithReason:v28 indented:1];

        v25 = v25 + 1;
        v26 = v23;
      }

      while (v22 != v25);
      v22 = [callsOnDefaultPairedDevice countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }
}

@end