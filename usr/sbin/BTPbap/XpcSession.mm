@interface XpcSession
- (XpcSession)initWithConnection:(id)connection;
- (const)_callStatusForCall:(id)call;
- (id)_predicateForType:(id)type;
- (void)_handleGetRecentCallMsg:(id)msg reply:(id)reply;
- (void)_handleGetSizeMsg:(id)msg reply:(id)reply;
- (void)_handleOpenMsg:(id)msg reply:(id)reply;
- (void)handleMsg:(id)msg;
@end

@implementation XpcSession

- (XpcSession)initWithConnection:(id)connection
{
  v10.receiver = self;
  v10.super_class = XpcSession;
  v3 = [(BTXpcSession *)&v10 initWithConnection:connection];
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

- (void)handleMsg:(id)msg
{
  msgCopy = msg;
  v9 = [(BTXpcSession *)self stringForKey:"kMsgId" optional:0 dict:msgCopy];
  v5 = [(BTXpcSession *)self xpcDictForKey:"kMsgArgs" optional:1 dict:msgCopy];
  reply = xpc_dictionary_create_reply(msgCopy);

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

- (void)_handleOpenMsg:(id)msg reply:(id)reply
{
  msgCopy = msg;
  v15 = [(BTXpcSession *)self stringForKey:"kArgType" optional:0 dict:msgCopy];
  v6 = [(BTXpcSession *)self numberForKey:"kArgOffset" optional:0 dict:msgCopy];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [(BTXpcSession *)self numberForKey:"kArgCount" optional:0 dict:msgCopy];

  unsignedIntegerValue2 = [v8 unsignedIntegerValue];
  v10 = [(XpcSession *)self _predicateForType:v15];
  chManager = [(XpcSession *)self chManager];
  v12 = [chManager coalescedCallsWithPredicate:v10 limit:0 offset:0 batchSize:0];

  v17.length = [v12 count];
  v17.location = 0;
  v18.location = unsignedIntegerValue;
  v18.length = unsignedIntegerValue2;
  v13 = NSIntersectionRange(v17, v18);
  if (v13.length)
  {
    v14 = [v12 subarrayWithRange:{v13.location, v13.length}];
    [(XpcSession *)self setChRecentCalls:v14];
  }
}

- (void)_handleGetSizeMsg:(id)msg reply:(id)reply
{
  replyCopy = reply;
  chRecentCalls = [(XpcSession *)self chRecentCalls];
  xpc_dictionary_set_uint64(replyCopy, "kValue", [chRecentCalls count]);
}

- (void)_handleGetRecentCallMsg:(id)msg reply:(id)reply
{
  xdict = reply;
  v6 = [(BTXpcSession *)self numberForKey:"kArgIndex" optional:0 dict:msg];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  chRecentCalls = [(XpcSession *)self chRecentCalls];
  v9 = [chRecentCalls objectAtIndexedSubscript:unsignedIntegerValue];

  tuCallProviderManager = [(XpcSession *)self tuCallProviderManager];
  v11 = [tuCallProviderManager providerForRecentCall:v9];

  addressBookRecordId = [v9 addressBookRecordId];

  if (addressBookRecordId)
  {
    addressBookRecordId2 = [v9 addressBookRecordId];
    xpc_dictionary_set_uint64(xdict, "kLegacyIdentifier", [addressBookRecordId2 longLongValue]);
  }

  callerId = [v9 callerId];

  if (callerId)
  {
    callerId2 = [v9 callerId];
    xpc_dictionary_set_string(xdict, "kCallerId", [callerId2 UTF8String]);
  }

  if ([v9 callStatus])
  {
    xpc_dictionary_set_string(xdict, "kStatus", [(XpcSession *)self _callStatusForCall:v9]);
  }

  date = [v9 date];

  if (date)
  {
    date2 = [v9 date];
    [date2 timeIntervalSince1970];
    xpc_dictionary_set_date(xdict, "kDate", (v18 * 1000000000.0));
  }

  callerIdLabel = [v9 callerIdLabel];

  if (callerIdLabel)
  {
    callerIdLabel2 = [v9 callerIdLabel];
    xpc_dictionary_set_string(xdict, "kLabel", [callerIdLabel2 UTF8String]);
  }

  if (v11)
  {
    identifier = [v11 identifier];
    xpc_dictionary_set_string(xdict, "kProviderIdentifier", [identifier UTF8String]);
  }
}

- (id)_predicateForType:(id)type
{
  typeCopy = type;
  v4 = objc_alloc_init(NSMutableArray);
  if ([typeCopy containsString:@"Incoming"])
  {
    v5 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusConnectedIncoming];
    v21[0] = v5;
    v6 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusAnsweredElsewhere];
    v21[1] = v6;
    v7 = [NSArray arrayWithObjects:v21 count:2];
    v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
    [v4 addObject:v8];
  }

  if ([typeCopy containsString:@"Outgoing"])
  {
    v9 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusConnectedOutgoing];
    v20[0] = v9;
    v10 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusCancelled];
    v20[1] = v10;
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
    [v4 addObject:v12];
  }

  if ([typeCopy containsString:@"Missed"])
  {
    v13 = [CHRecentCall predicateForCallsWithStatus:kCHCallStatusMissed];
    [v4 addObject:v13];
  }

  if ([typeCopy containsString:@"Unread"])
  {
    v14 = [CHRecentCall predicateForCallsWithStatusRead:0];
    [v4 addObject:v14];
  }

  if ([typeCopy containsString:@"Telephony"])
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

- (const)_callStatusForCall:(id)call
{
  callCopy = call;
  callStatus = [callCopy callStatus];
  if ((kCHCallStatusIncoming & callStatus & ~kCHCallStatusMissed) != 0)
  {
    v5 = "Incoming";
  }

  else
  {
    callStatus2 = [callCopy callStatus];
    if ((kCHCallStatusOutgoing & callStatus2) != 0)
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