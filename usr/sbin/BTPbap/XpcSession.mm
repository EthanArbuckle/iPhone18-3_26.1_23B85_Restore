@interface XpcSession
- (XpcSession)initWithConnection:(id)a3;
- (const)_callStatusForCall:(id)a3;
- (id)_predicateForType:(id)a3;
- (void)_handleGetRecentCallMsg:(id)a3 reply:(id)a4;
- (void)_handleGetSizeMsg:(id)a3 reply:(id)a4;
- (void)_handleOpenMsg:(id)a3 reply:(id)a4;
- (void)handleMsg:(id)a3;
@end

@implementation XpcSession

- (XpcSession)initWithConnection:(id)a3
{
  v10.receiver = self;
  v10.super_class = XpcSession;
  v3 = [(BTXpcSession *)&v10 initWithConnection:a3];
  if (v3 && NSClassFromString(@"CHManager"))
  {
    v4 = objc_alloc_init(CHManager);
    chManager = v3->_chManager;
    v3->_chManager = v4;

    v6 = [NSDate dateWithTimeIntervalSinceNow:-31536000.0];
    [(CHManager *)v3->_chManager setLimitingStartDate:v6];

    [(CHManager *)v3->_chManager setCoalescingStrategy:kCHCoalescingStrategyRecents];
    v7 = objc_alloc_init(TUCallProviderManager);
    tuCallProviderManager = v3->_tuCallProviderManager;
    v3->_tuCallProviderManager = v7;
  }

  return v3;
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  v9 = [(BTXpcSession *)self stringForKey:"kMsgId" optional:0 dict:v4];
  v5 = [(BTXpcSession *)self xpcDictForKey:"kMsgArgs" optional:1 dict:v4];
  reply = xpc_dictionary_create_reply(v4);

  v7 = [NSString stringWithFormat:@"_handle%@Msg:reply:", v9];
  v8 = NSSelectorFromString(v7);

  if (objc_opt_respondsToSelector())
  {
    [self v8];
  }

  if (reply)
  {
    [(BTXpcSession *)self sendReply:reply];
  }
}

- (void)_handleOpenMsg:(id)a3 reply:(id)a4
{
  v5 = a3;
  v15 = [(BTXpcSession *)self stringForKey:"kArgType" optional:0 dict:v5];
  v6 = [(BTXpcSession *)self numberForKey:"kArgOffset" optional:0 dict:v5];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(BTXpcSession *)self numberForKey:"kArgCount" optional:0 dict:v5];

  v9 = [v8 unsignedIntegerValue];
  v10 = [(XpcSession *)self _predicateForType:v15];
  v11 = [(XpcSession *)self chManager];
  v12 = [v11 coalescedCallsWithPredicate:v10 limit:0 offset:0 batchSize:0];

  v17.length = [v12 count];
  v17.location = 0;
  v18.location = v7;
  v18.length = v9;
  v13 = NSIntersectionRange(v17, v18);
  if (v13.length)
  {
    v14 = [v12 subarrayWithRange:{v13.location, v13.length}];
    [(XpcSession *)self setChRecentCalls:v14];
  }
}

- (void)_handleGetSizeMsg:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [(XpcSession *)self chRecentCalls];
  xpc_dictionary_set_uint64(v5, "kValue", [v6 count]);
}

- (void)_handleGetRecentCallMsg:(id)a3 reply:(id)a4
{
  xdict = a4;
  v6 = [(BTXpcSession *)self numberForKey:"kArgIndex" optional:0 dict:a3];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(XpcSession *)self chRecentCalls];
  v9 = [v8 objectAtIndexedSubscript:v7];

  v10 = [(XpcSession *)self tuCallProviderManager];
  v11 = [v10 providerForRecentCall:v9];

  v12 = [v9 addressBookRecordId];

  if (v12)
  {
    v13 = [v9 addressBookRecordId];
    xpc_dictionary_set_uint64(xdict, "kLegacyIdentifier", [v13 longLongValue]);
  }

  v14 = [v9 callerId];

  if (v14)
  {
    v15 = [v9 callerId];
    xpc_dictionary_set_string(xdict, "kCallerId", [v15 UTF8String]);
  }

  if ([v9 callStatus])
  {
    xpc_dictionary_set_string(xdict, "kStatus", [(XpcSession *)self _callStatusForCall:v9]);
  }

  v16 = [v9 date];

  if (v16)
  {
    v17 = [v9 date];
    [v17 timeIntervalSince1970];
    xpc_dictionary_set_date(xdict, "kDate", (v18 * 1000000000.0));
  }

  v19 = [v9 callerIdLabel];

  if (v19)
  {
    v20 = [v9 callerIdLabel];
    xpc_dictionary_set_string(xdict, "kLabel", [v20 UTF8String]);
  }

  if (v11)
  {
    v21 = [v11 identifier];
    xpc_dictionary_set_string(xdict, "kProviderIdentifier", [v21 UTF8String]);
  }
}

- (id)_predicateForType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if ([v3 containsString:@"Incoming"])
  {
    v5 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusConnectedIncoming];
    v21[0] = v5;
    v6 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusAnsweredElsewhere];
    v21[1] = v6;
    v7 = [NSArray arrayWithObjects:v21 count:2];
    v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
    [v4 addObject:v8];
  }

  if ([v3 containsString:@"Outgoing"])
  {
    v9 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusConnectedOutgoing];
    v20[0] = v9;
    v10 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusCancelled];
    v20[1] = v10;
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
    [v4 addObject:v12];
  }

  if ([v3 containsString:@"Missed"])
  {
    v13 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusMissed];
    [v4 addObject:v13];
  }

  if ([v3 containsString:@"Unread"])
  {
    v14 = [CHRecentCall predicateForCallsWithStatusRead:0];
    [v4 addObject:v14];
  }

  if ([v3 containsString:@"Telephony"])
  {
    v15 = [CHRecentCall predicateForCallsWithRemoteParticipantHandleType:2];
    [v4 addObject:v15];
  }

  if ([v4 count])
  {
    v16 = [NSDate dateWithTimeIntervalSinceNow:-31536000.0];
    v17 = [CHRecentCall predicateForCallsBetweenStartDate:v16 endDate:0];
    [v4 addObject:v17];

    v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (const)_callStatusForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 callStatus];
  if ((kCHCallStatusIncoming & v4 & ~kCHCallStatusMissed) != 0)
  {
    v5 = "Incoming";
  }

  else
  {
    v6 = [v3 callStatus];
    if ((kCHCallStatusOutgoing & v6) != 0)
    {
      v5 = "Outgoing";
    }

    else
    {
      v5 = "Missed";
    }
  }

  return v5;
}

@end