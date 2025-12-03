@interface EventPublisher
+ (id)sharedInstance;
- (void)sendEvent:(id)event;
- (void)sendEvent:(id)event keyIdentifier:(id)identifier;
@end

@implementation EventPublisher

+ (id)sharedInstance
{
  if (qword_10050CCD8 != -1)
  {
    sub_1003AE7F4();
  }

  v3 = qword_10050CCD0;

  return v3;
}

- (void)sendEvent:(id)event keyIdentifier:(id)identifier
{
  eventCopy = event;
  if (identifier)
  {
    identifierCopy = identifier;
    v7 = +[_SESSessionManager sessionManager];
    [v7 sendEvent:eventCopy keyIdentifier:identifierCopy];
  }

  [(EventPublisher *)self sendEvent:eventCopy];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"xpcEventName"];
  if (v5)
  {
    v6 = [eventCopy objectForKeyedSubscript:@"appletIdentifier"];
    v7 = [eventCopy objectForKeyedSubscript:@"keyIdentifier"];
    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.start" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"readerIdentifier"];
      v9 = [eventCopy objectForKeyedSubscript:@"rangingTimeoutSec"];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%@:%d", v6, v7, v8, [v9 unsignedIntValue]);
      v10 = LABEL_4:;
LABEL_5:

LABEL_16:
      goto LABEL_17;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.end" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"readerIdentifier"];
      [NSString stringWithFormat:@"%@:%@:%@", v6, v7, v8];
      v10 = LABEL_15:;
      goto LABEL_16;
    }

    if ([@"deprecated" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"rangingSuspensionReasons"];
      v27 = v7;
      unsignedIntValue = [v8 unsignedIntValue];
      unsignedIntValue2 = v6;
      v11 = @"%@:%@:%d";
LABEL_14:
      [NSString stringWithFormat:v11, unsignedIntValue2, v27, unsignedIntValue];
      goto LABEL_15;
    }

    if ([@"com.apple.secureelementservice.event.did.ranging.suspend" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"rangingSuspensionReasons"];
      unsignedIntValue2 = [v8 unsignedIntValue];
      v11 = @"%d";
      goto LABEL_14;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.start" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"rkeFunctionID"];
      v9 = [eventCopy objectForKeyedSubscript:@"rkeActionID"];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%d:%d", v6, v7, [v8 unsignedShortValue], objc_msgSend(v9, "unsignedCharValue"));
      goto LABEL_4;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.complete" isEqualToString:v5])
    {
      v20 = [eventCopy objectForKeyedSubscript:@"rkeFunctionID"];
      v21 = [eventCopy objectForKeyedSubscript:@"rkeActionID"];
      v22 = [eventCopy objectForKeyedSubscript:@"error"];
      if (v22)
      {
        v23 = &off_1004DCA50;
      }

      else
      {
        v23 = [eventCopy objectForKeyedSubscript:@"rkeExecutionStatus"];
      }

      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%d:%d:%d", v6, v7, [v20 unsignedShortValue], objc_msgSend(v21, "unsignedCharValue"), objc_msgSend(v23, "unsignedCharValue"));

      goto LABEL_17;
    }

    if ([@"com.apple.secureelementservice.acwg.event.did.status.update" isEqualToString:v5])
    {
      v8 = [eventCopy objectForKeyedSubscript:@"lockStatus"];
      v9 = [eventCopy objectForKeyedSubscript:@"readerIdentifier"];
      v24 = [eventCopy objectForKeyedSubscript:@"timestamp"];
      v25 = [eventCopy objectForKeyedSubscript:@"lockOperationSource"];
      v10 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@:%@", v6, v7, v9, v24, v8, v25];
    }

    else
    {
      if (([@"com.apple.secureelementservice.acwg.event.did.lock" isEqualToString:v5] & 1) == 0 && (objc_msgSend(@"com.apple.secureelementservice.acwg.event.did.unlock", "isEqualToString:", v5) & 1) == 0 && !objc_msgSend(@"com.apple.secureelementservice.acwg.event.did.jam", "isEqualToString:", v5))
      {
        v10 = 0;
        if (v6 && v7)
        {
          v10 = [NSString stringWithFormat:@"%@:%@", v6, v7];
        }

LABEL_17:
        v12 = SESDefaultLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v30 = v5;
          v31 = 2112;
          v32 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sending event via NSDistributedNotification %@ %@", buf, 0x16u);
        }

        v13 = +[NSDistributedNotificationCenter defaultCenter];
        [v13 postNotificationName:v5 object:v10 userInfo:0 options:3];

        v14 = _CFXPCCreateXPCObjectFromCFObject();
        v15 = v14;
        if (v14)
        {
          count = xpc_dictionary_get_count(v14);
          v17 = SESDefaultLogObject();
          eventPublisher = v17;
          if (count)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v30 = eventCopy;
              _os_log_impl(&_mh_execute_header, eventPublisher, OS_LOG_TYPE_INFO, "Sending event via XPC %@", buf, 0xCu);
            }

            eventPublisher = [(EventPublisher *)self eventPublisher];
            [eventPublisher sendEvent:v15];
            goto LABEL_29;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = eventCopy;
            v19 = "Created event xpc object has no keys for dictionary %@";
            goto LABEL_28;
          }
        }

        else
        {
          eventPublisher = SESDefaultLogObject();
          if (os_log_type_enabled(eventPublisher, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = eventCopy;
            v19 = "Failed to get event xpc object from dictionary %@";
LABEL_28:
            _os_log_impl(&_mh_execute_header, eventPublisher, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      v8 = [eventCopy objectForKeyedSubscript:@"readerIdentifier"];
      v9 = [eventCopy objectForKeyedSubscript:@"timestamp"];
      v24 = [eventCopy objectForKeyedSubscript:@"lockOperationSource"];
      v10 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@", v6, v7, v8, v9, v24];
    }

    goto LABEL_5;
  }

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = eventCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Dropping event with no SES_EVENT_KEY_NAME %@", buf, 0xCu);
  }

LABEL_30:
}

@end