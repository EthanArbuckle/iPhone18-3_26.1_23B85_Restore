@interface EventPublisher
+ (id)sharedInstance;
- (void)sendEvent:(id)a3;
- (void)sendEvent:(id)a3 keyIdentifier:(id)a4;
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

- (void)sendEvent:(id)a3 keyIdentifier:(id)a4
{
  v8 = a3;
  if (a4)
  {
    v6 = a4;
    v7 = +[_SESSessionManager sessionManager];
    [v7 sendEvent:v8 keyIdentifier:v6];
  }

  [(EventPublisher *)self sendEvent:v8];
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"xpcEventName"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appletIdentifier"];
    v7 = [v4 objectForKeyedSubscript:@"keyIdentifier"];
    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.start" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"readerIdentifier"];
      v9 = [v4 objectForKeyedSubscript:@"rangingTimeoutSec"];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%@:%d", v6, v7, v8, [v9 unsignedIntValue]);
      v10 = LABEL_4:;
LABEL_5:

LABEL_16:
      goto LABEL_17;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.end" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"readerIdentifier"];
      [NSString stringWithFormat:@"%@:%@:%@", v6, v7, v8];
      v10 = LABEL_15:;
      goto LABEL_16;
    }

    if ([@"deprecated" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"rangingSuspensionReasons"];
      v27 = v7;
      v28 = [v8 unsignedIntValue];
      v26 = v6;
      v11 = @"%@:%@:%d";
LABEL_14:
      [NSString stringWithFormat:v11, v26, v27, v28];
      goto LABEL_15;
    }

    if ([@"com.apple.secureelementservice.event.did.ranging.suspend" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"rangingSuspensionReasons"];
      v26 = [v8 unsignedIntValue];
      v11 = @"%d";
      goto LABEL_14;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.start" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"rkeFunctionID"];
      v9 = [v4 objectForKeyedSubscript:@"rkeActionID"];
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%d:%d", v6, v7, [v8 unsignedShortValue], objc_msgSend(v9, "unsignedCharValue"));
      goto LABEL_4;
    }

    if ([@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.complete" isEqualToString:v5])
    {
      v20 = [v4 objectForKeyedSubscript:@"rkeFunctionID"];
      v21 = [v4 objectForKeyedSubscript:@"rkeActionID"];
      v22 = [v4 objectForKeyedSubscript:@"error"];
      if (v22)
      {
        v23 = &off_1004DCA50;
      }

      else
      {
        v23 = [v4 objectForKeyedSubscript:@"rkeExecutionStatus"];
      }

      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@:%d:%d:%d", v6, v7, [v20 unsignedShortValue], objc_msgSend(v21, "unsignedCharValue"), objc_msgSend(v23, "unsignedCharValue"));

      goto LABEL_17;
    }

    if ([@"com.apple.secureelementservice.acwg.event.did.status.update" isEqualToString:v5])
    {
      v8 = [v4 objectForKeyedSubscript:@"lockStatus"];
      v9 = [v4 objectForKeyedSubscript:@"readerIdentifier"];
      v24 = [v4 objectForKeyedSubscript:@"timestamp"];
      v25 = [v4 objectForKeyedSubscript:@"lockOperationSource"];
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
          v18 = v17;
          if (count)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v30 = v4;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Sending event via XPC %@", buf, 0xCu);
            }

            v18 = [(EventPublisher *)self eventPublisher];
            [v18 sendEvent:v15];
            goto LABEL_29;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v4;
            v19 = "Created event xpc object has no keys for dictionary %@";
            goto LABEL_28;
          }
        }

        else
        {
          v18 = SESDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v4;
            v19 = "Failed to get event xpc object from dictionary %@";
LABEL_28:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      v8 = [v4 objectForKeyedSubscript:@"readerIdentifier"];
      v9 = [v4 objectForKeyedSubscript:@"timestamp"];
      v24 = [v4 objectForKeyedSubscript:@"lockOperationSource"];
      v10 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@", v6, v7, v8, v9, v24];
    }

    goto LABEL_5;
  }

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Dropping event with no SES_EVENT_KEY_NAME %@", buf, 0xCu);
  }

LABEL_30:
}

@end