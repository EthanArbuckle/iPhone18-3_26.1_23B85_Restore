@interface FMDCommandHandlerNotify
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation FMDCommandHandlerNotify

- (void)handleCommand
{
  v3 = [(FMDCommandHandler *)self commandParams];
  v4 = [v3 objectForKeyedSubscript:@"title"];

  v5 = [(FMDCommandHandler *)self commandParams];
  v6 = [v5 objectForKeyedSubscript:@"body"];

  v7 = [(FMDCommandHandler *)self commandParams];
  v8 = [v7 objectForKeyedSubscript:@"category"];

  v9 = [(FMDCommandHandler *)self commandParams];
  v10 = [v9 objectForKeyedSubscript:@"deviceId"];

  if (v4)
  {
    if (v6)
    {
      if (v8)
      {
        if (v10)
        {
          v11 = objc_alloc_init(FMDUserNotificationContent);
          [(FMDUserNotificationContent *)v11 setTitle:v4];
          [(FMDUserNotificationContent *)v11 setBody:v6];
          [(FMDUserNotificationContent *)v11 setCategoryIdentifier:v8];
          [(FMDUserNotificationContent *)v11 setDeviceId:v10];
          v12 = +[FMDFMIPManager sharedInstance];
          [v12 addNotificationRequest:v11 completion:&stru_1002CEFD0];

          [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
          goto LABEL_13;
        }

        v13 = 3;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notify command failed; missing : %lu", &v15, 0xCu);
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
LABEL_13:
}

- (void)sendAckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandHandler *)self commandParams];
  v6 = [v5 objectForKeyedSubscript:@"ackURL"];

  v7 = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [(FMDCommandHandler *)self ackDataForCommand];
    v10 = [v9 objectForKeyedSubscript:@"status"];
    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"status"];
      v26 = [v11 intValue];
    }

    else
    {
      v26 = 200;
    }

    v12 = [(FMDCommandHandler *)self commandParams];
    v13 = [v12 objectForKey:@"udid"];
    v14 = [v13 fm_nullToNil];

    v27 = v9;
    v28 = v4;
    if ([v14 length])
    {
      v15 = [[FMDAccessoryIdentifier alloc] initWithString:v14];
      v16 = [v7 accessoryRegistry];
      v17 = [v16 accessoryForIdentifier:v15];
    }

    else
    {
      v17 = 0;
    }

    v18 = [FMDActingRequestDecorator alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10015810C;
    v32[3] = &unk_1002CDF18;
    v33 = v17;
    v19 = v7;
    v34 = v19;
    v20 = v17;
    v21 = [(FMDActingRequestDecorator *)v18 initWithDeviceContextGenerator:&stru_1002CEFF0 deviceInfoGenerator:v32 serverContextGenerator:0 requestHeaderGenerator:0];
    v22 = [FMDRequestAckNotify alloc];
    v23 = [v19 account];
    v24 = [(FMDCommandHandler *)self commandParams];
    v25 = [(FMDRequestAckNotify *)v22 initWithAccount:v23 messageCommand:v24 cmdStatusCode:v26 ackURL:v8];

    [(FMDRequest *)v25 setDecorator:v21];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001581A8;
    v30[3] = &unk_1002CD1D0;
    v4 = v28;
    v31 = v28;
    [(FMDRequest *)v25 setCompletionHandler:v30];
    [v19 enqueueRequest:v25];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the message command because there is no ack URL", buf, 2u);
    }
  }
}

@end