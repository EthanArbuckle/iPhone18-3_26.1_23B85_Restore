@interface HSMessageProcessor
- (HSMessageProcessor)init;
- (int)processMessage:(id)message response:(id *)response;
- (int)processMessagev1:(id)messagev1 response:(id *)response;
- (int)rebootDevice:(id *)device;
@end

@implementation HSMessageProcessor

- (HSMessageProcessor)init
{
  v6.receiver = self;
  v6.super_class = HSMessageProcessor;
  v2 = [(HSMessageProcessor *)&v6 init];
  if (v2)
  {
    v3 = +[HSSepUtil sharedSingleton];
    sepUtil = v2->_sepUtil;
    v2->_sepUtil = v3;
  }

  return v2;
}

- (int)processMessagev1:(id)messagev1 response:(id *)response
{
  messagev1Copy = messagev1;
  if (messagev1Copy)
  {
    NSLog(@"Processing Message in v1 format");
    v6 = +[FNPluginManager sharedManager];
    messageStr = [messagev1Copy messageStr];
    v8 = [v6 getClient:messageStr];

    v9 = [messagev1Copy description];
    NSLog(@"Message : %@", v9);

    [v8 sendMessage:messagev1Copy response:response];
    v10 = 0;
  }

  else
  {
    *response = [[HSMessageResponse alloc] initWithName:@"Error" statusCode:&off_100011F68];
    v10 = 2;
  }

  return v10;
}

- (int)rebootDevice:(id *)device
{
  v4 = sub_100000FD8();
  v5 = dispatch_time(0, 2000000000);
  dispatch_after(v5, &_dispatch_main_q, &stru_1000107F0);
  v6 = [NSNumber numberWithUnsignedInt:0];
  [v4 setObject:v6 forKeyedSubscript:@"Status"];

  [v4 setObject:&stru_1000108B0 forKeyedSubscript:@"Error"];
  if (device)
  {
    v7 = v4;
    *device = v4;
  }

  return 0;
}

- (int)processMessage:(id)message response:(id *)response
{
  messageCopy = message;
  v7 = messageCopy;
  v8 = &lockdown_copy_checkin_info_ptr;
  responseCopy = response;
  if (!response)
  {
    v58 = messageCopy;
    sub_100009794();
    v95 = 0;
    v65 = 0;
    v91 = 0;
    v93 = 0;
    v26 = 4;
    v64 = 0;
    goto LABEL_26;
  }

  selfCopy = self;
  v9 = [NSNumber numberWithInt:4];
  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v9, @"Status", &stru_1000108B0, @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

  v11 = [NSNumber numberWithInt:0];
  v95 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v11, @"Status", &stru_1000108B0, @"Error", @"Success", @"Output", &stru_1000108B0, @"Data", 0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 objectForKey:@"Command"];
    v8 = &lockdown_copy_checkin_info_ptr;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
      lastPathComponent = [v14 lastPathComponent];
      v84 = [NSString stringWithFormat:@"command = %@", v13];
      sub_100006E34(2, @"[%@:%d] %@\n", v16, v17, v18, v19, v20, v21, lastPathComponent);

      if ([v13 isEqualToString:@"SepUtil"])
      {
        v22 = responseCopy;
        v23 = [(HSSepUtil *)selfCopy->_sepUtil processSepUtilCommand:v7 response:responseCopy];
LABEL_13:
        v26 = v23;
        v12 = v13;
        goto LABEL_14;
      }

      if ([v13 isEqualToString:@"GetLogs"])
      {
        v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
        lastPathComponent2 = [v41 lastPathComponent];
        v87 = [NSString stringWithFormat:@"Start processing the %@ command", v13, 99, v84];
        sub_100006E34(2, @"[%@:%d] %@\n", v43, v44, v45, v46, v47, v48, lastPathComponent2);

        v22 = responseCopy;
        v23 = sub_100007360(responseCopy);
        goto LABEL_13;
      }

      if ([v13 isEqualToString:@"PerformComponentCheckReboot"])
      {
        v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
        lastPathComponent3 = [v49 lastPathComponent];
        v88 = [NSString stringWithFormat:@"Start processing the %@ command", v13, 99, v84];
        sub_100006E34(2, @"[%@:%d] %@\n", v51, v52, v53, v54, v55, v56, lastPathComponent3);

        v22 = responseCopy;
        v23 = [(HSMessageProcessor *)selfCopy rebootDevice:responseCopy];
        goto LABEL_13;
      }

      v26 = 4;
      v12 = v13;
    }

    else
    {
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
      lastPathComponent4 = [v33 lastPathComponent];
      v86 = [NSString stringWithFormat:@"Command is not a string. This is not supported\n"];
      v26 = 4;
      sub_100006E34(4, @"[%@:%d] %@\n", v35, v36, v37, v38, v39, v40, lastPathComponent4);

      [v10 setObject:@"Command is not a string. This is not supported" forKey:@"Error"];
      v13 = 0;
    }
  }

  else
  {
    v8 = &lockdown_copy_checkin_info_ptr;
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
    lastPathComponent5 = [v24 lastPathComponent];
    v85 = [NSString stringWithFormat:@"Message is not a dictionary. This is not supported\n"];
    v26 = 4;
    sub_100006E34(4, @"[%@:%d] %@\n", v27, v28, v29, v30, v31, v32, lastPathComponent5);

    [v10 setObject:@"Message is not a dictionary. This is not supported" forKey:@"Error"];
    v13 = 0;
    v12 = 0;
  }

  v22 = responseCopy;
LABEL_14:
  v57 = *v22;
  v91 = v12;
  v93 = v13;
  if (*v22 || !v10)
  {
    if (v57)
    {
      v60 = [v57 valueForKey:@"Output"];
      if ([v60 length])
      {
        v58 = v7;
LABEL_22:

        goto LABEL_25;
      }

      v61 = [*v22 valueForKey:@"Error"];
      if ([v61 length])
      {
        v58 = v7;

        goto LABEL_22;
      }

      v62 = [*v22 valueForKey:@"Status"];
      integerValue = [v62 integerValue];

      if (!integerValue)
      {
        v58 = v7;
        v60 = [*v22 valueForKey:@"Data"];
        if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v60 length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(v60, "count"))
        {
          *v22 = v95;
        }

        goto LABEL_22;
      }
    }

    v58 = v7;
    goto LABEL_25;
  }

  v58 = v7;
  v59 = v10;
  *v22 = v10;
LABEL_25:
  v64 = v22;
  v65 = v10;
LABEL_26:
  v66 = [v8[149] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
  lastPathComponent6 = [v66 lastPathComponent];
  [v8[149] stringWithFormat:@"%s:%d %@", "-[HSMessageProcessor processMessage:response:]", 128, *v64];
  v89 = v68 = v8;
  sub_100006E34(2, @"[%@:%d] %@\n", v69, v70, v71, v72, v73, v74, lastPathComponent6);

  v75 = [v8[149] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
  lastPathComponent7 = [v75 lastPathComponent];
  v90 = [v68[149] stringWithFormat:@"rval = %d", v26, 128, v89];
  sub_100006E34(2, @"[%@:%d] %@\n", v77, v78, v79, v80, v81, v82, lastPathComponent7);

  return v26;
}

@end