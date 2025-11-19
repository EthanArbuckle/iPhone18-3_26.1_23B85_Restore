@interface NPHCallConfiguration
+ (void)log:(id)a3 withReason:(id)a4;
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
- (NPHCallConfiguration)initWithCalls:(id)a3 andCallsOnDefaultPairedDevice:(id)a4 source:(id)a5;
- (NSArray)callsEnded;
- (NSArray)callsEnding;
- (NSArray)callsFailed;
- (NSArray)callsNotDeclined;
- (id)copyWithCallsPassingTest:(id)a3;
- (id)description;
- (id)mirrored;
- (void)_log;
- (void)disconnectAllCallsWithSource:(id)a3;
- (void)disconnectAllNonEmergencyCallsWithSource:(id)a3;
- (void)disconnectCurrentCall;
@end

@implementation NPHCallConfiguration

- (NPHCallConfiguration)init
{
  v3 = [[NPHCallConfigurationChangeSource alloc] initWithString:@"initial"];
  v4 = [(NPHCallConfiguration *)self initWithCalls:&__NSArray0__struct andCallsOnDefaultPairedDevice:&__NSArray0__struct source:v3];

  return v4;
}

- (NPHCallConfiguration)initWithCalls:(id)a3 andCallsOnDefaultPairedDevice:(id)a4 source:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NPHCallConfiguration;
  v12 = [(NPHCallConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calls, a3);
    objc_storeStrong(&v13->_callsOnDefaultPairedDevice, a4);
    objc_storeStrong(&v13->_source, a5);
  }

  return v13;
}

- (NSArray)callsEnding
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 objectsPassingTest:&stru_100014918];

  return v3;
}

- (NSArray)callsEnded
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 objectsPassingTest:&stru_100014938];

  return v3;
}

- (NSArray)callsNotDeclined
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 objectsPassingTest:&stru_100014958];

  return v3;
}

- (NPHCall)incomingCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 firstObjectPassingTest:&stru_100014978];

  return v3;
}

- (NPHCall)activeCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 firstObjectPassingTest:&stru_100014998];

  return v3;
}

- (NPHCall)sendingCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 firstObjectPassingTest:&stru_1000149B8];

  return v3;
}

- (NPHCall)currentCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [NPHCall currentCallFromCalls:v2];

  return v3;
}

- (NPHCall)remoteCall
{
  v3 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [v3 firstObjectPassingTest:&stru_1000149D8];
  v5 = [v3 firstObjectPassingTest:&stru_1000149F8];
  v6 = [v3 firstObject];
  v7 = [(NPHCallConfiguration *)self callHandingOffToWatch];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
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
  v2 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v3 = [v2 firstObjectPassingTest:&stru_100014A18];

  return v3;
}

- (NSArray)callsFailed
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 objectsPassingTest:&stru_100014A38];

  return v3;
}

- (NPHCall)blockedCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 firstObjectPassingTest:&stru_100014A58];

  return v3;
}

- (NPHCall)screeningCall
{
  v3 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [v3 firstObjectPassingTest:&stru_100014A78];

  if (!v4)
  {
    v5 = [(NPHCallConfiguration *)self calls];
    v4 = [v5 firstObjectPassingTest:&stru_100014A98];
  }

  return v4;
}

- (NPHCall)smartHoldingCall
{
  v3 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [v3 firstObjectPassingTest:&stru_100014AB8];

  if (!v4)
  {
    v5 = [(NPHCallConfiguration *)self calls];
    v4 = [v5 firstObjectPassingTest:&stru_100014AD8];
  }

  return v4;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = NPHCallConfiguration;
  v3 = [(NPHCallConfiguration *)&v14 description];
  v4 = [(NPHCallConfiguration *)self incomingCall];
  v5 = [v4 description];
  v6 = [(NPHCallConfiguration *)self calls];
  v7 = [v6 description];
  v8 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [v8 description];
  v10 = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  v11 = [v10 description];
  v12 = [NSString stringWithFormat:@"%@, incoming %@, calls %@, callsOnDefaultPairedDevice %@, callToAnswerOnPhone %@", v3, v5, v7, v9, v11];

  return v12;
}

- (BOOL)hasEmergencyCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 hasObjectPassingTest:&stru_100014AF8];

  return v3;
}

- (BOOL)hasHostedCall
{
  v2 = [(NPHCallConfiguration *)self calls];
  v3 = [v2 hasObjectPassingTest:&stru_100014B18];

  return v3;
}

- (void)disconnectAllCallsWithSource:(id)a3
{
  v4 = a3;
  v5 = [(NPHCallConfiguration *)self calls];
  v6 = [v5 objectsPassingTest:&stru_100014B38];

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

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), v4}];
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
  v3 = [(NPHCallConfiguration *)self currentCall];
  v4 = [(NPHCallConfiguration *)self calls];
  if ([v4 count] == 1)
  {
    v5 = [NSString stringWithFormat:@"%s", "[NPHCallConfiguration disconnectCurrentCall]"];
    [v3 disconnectWithReason:0 fromSource:v5];
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

- (id)copyWithCallsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [NPHCallConfiguration alloc];
  v6 = [(NPHCallConfiguration *)self calls];
  v7 = [v6 objectsPassingTest:v4];
  v8 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [v8 objectsPassingTest:v4];

  v10 = [(NPHCallConfiguration *)self source];
  v11 = [(NPHCallConfiguration *)v5 initWithCalls:v7 andCallsOnDefaultPairedDevice:v9 source:v10];

  return v11;
}

- (id)mirrored
{
  v3 = NPHIsCerberusEnabled();
  v4 = [NPHCallConfiguration alloc];
  if (v3)
  {
    v5 = [(NPHCallConfiguration *)self calls];
    v6 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:v7 andCallsOnDefaultPairedDevice:&__NSArray0__struct source:v8];
  }

  else
  {
    v5 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    v6 = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:v5 andCallsOnDefaultPairedDevice:&__NSArray0__struct source:v6];
  }

  return v9;
}

- (void)disconnectAllNonEmergencyCallsWithSource:(id)a3
{
  v4 = a3;
  v5 = [(NPHCallConfiguration *)self calls];
  v6 = [v5 objectsPassingTest:&stru_100014B58];

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

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), v4}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)log:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001C24();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%p" error:0, v5];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (v5)
  {
    [v5 _log];
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
  v3 = [(NPHCallConfiguration *)self incomingCall];
  [v3 logWithReason:@"incomingCall" indented:1];

  v4 = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  [v4 logWithReason:@"callToAnswerOnPhone" indented:1];

  v5 = [(NPHCallConfiguration *)self callEnded];
  [v5 logWithReason:@"callEnded" indented:1];

  v6 = [(NPHCallConfiguration *)self callHandingOff];
  [v6 logWithReason:@"callHandingOff" indented:1];

  v7 = [(NPHCallConfiguration *)self callHandingOffToWatch];
  [v7 logWithReason:@"callHandingOffToWatch" indented:1];

  v8 = [(NPHCallConfiguration *)self dialPrompt];
  [v8 nph_logWithReason:@"dialPrompt" indented:1];

  v9 = [(NPHCallConfiguration *)self redialPrompt];
  [v9 nph_logWithReason:@"redialPrompt" indented:1];

  v10 = [(NPHCallConfiguration *)self rejoinPrompt];
  [v10 nph_logWithReason:@"rejoinPrompt" indented:1];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [(NPHCallConfiguration *)self calls];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v14 = (v17 + 1);
        v19 = [NSString stringWithFormat:@"call #%d ", v17];
        [v18 logWithReason:v19 indented:1];

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v29 + 1) + 8 * v25);
        v23 = (v26 + 1);
        v28 = [NSString stringWithFormat:@"callOnDefaultPairedDevice #%d ", v26];
        [v27 logWithReason:v28 indented:1];

        v25 = v25 + 1;
        v26 = v23;
      }

      while (v22 != v25);
      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }
}

@end