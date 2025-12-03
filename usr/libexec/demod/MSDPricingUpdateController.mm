@interface MSDPricingUpdateController
+ (id)sharedInstance;
- (BOOL)completed;
- (void)pricingUpdateTimeOut:(id)out;
- (void)receivedCompletionNotice:(id)notice fromRequest:(id)request;
- (void)receivedHeartBeat:(id)beat fromRequest:(id)request;
- (void)receivedOtherMessages:(id)messages fromRequest:(id)request;
- (void)receivedUpdateRequest:(id)request fromRequest:(id)fromRequest;
- (void)restartMonitor;
- (void)stopMonitor;
@end

@implementation MSDPricingUpdateController

+ (id)sharedInstance
{
  if (qword_1001A56C0 != -1)
  {
    sub_1000CF3E0();
  }

  v3 = qword_1001A56B8;

  return v3;
}

- (void)receivedUpdateRequest:(id)request fromRequest:(id)fromRequest
{
  requestCopy = request;
  fromRequestCopy = fromRequest;
  v8 = +[MSDTargetDevice sharedInstance];
  reply = xpc_dictionary_create_reply(fromRequestCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v10 = v8;
  objc_sync_enter(v10);
  if (([v10 aboutToReboot] & 1) != 0 || objc_msgSend(v10, "mode") == 7)
  {
    v11 = "NO";
  }

  else
  {
    v11 = "YES";
  }

  xpc_dictionary_set_string(reply, "MSDResult", v11);
  objc_sync_exit(v10);

  xpc_connection_send_message(requestCopy, reply);
  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Pricing update request.", v13, 2u);
  }

  [(MSDPricingUpdateController *)self setState:1];
  if ([v10 mode] == 5)
  {
    [(MSDPricingUpdateController *)self setNeedUpdate:1];
  }

  if ([v10 mode] == 2 || objc_msgSend(v10, "mode") == 4)
  {
    [(MSDPricingUpdateController *)self restartMonitor];
  }
}

- (void)receivedHeartBeat:(id)beat fromRequest:(id)request
{
  requestCopy = request;
  beatCopy = beat;
  v8 = +[MSDTargetDevice sharedInstance];
  reply = xpc_dictionary_create_reply(requestCopy);

  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_string(reply, "MSDResult", "YES");
  xpc_connection_send_message(beatCopy, reply);

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received Pricing heart beat.", v11, 2u);
  }

  if (([v8 mode] == 2 || objc_msgSend(v8, "mode") == 4) && -[MSDPricingUpdateController state](self, "state") <= 1)
  {
    [(MSDPricingUpdateController *)self restartMonitor];
  }
}

- (void)receivedCompletionNotice:(id)notice fromRequest:(id)request
{
  requestCopy = request;
  noticeCopy = notice;
  v8 = +[MSDTargetDevice sharedInstance];
  reply = xpc_dictionary_create_reply(requestCopy);

  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_string(reply, "MSDResult", "YES");
  xpc_connection_send_message(noticeCopy, reply);

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received Pricing completion notice.", v11, 2u);
  }

  [(MSDPricingUpdateController *)self stopMonitor];
  [(MSDPricingUpdateController *)self setState:2];
  if ([(MSDPricingUpdateController *)self switchModeAfterCompletion]&& ![(MSDPricingUpdateController *)self canceled])
  {
    [v8 switchModeImmediately:5];
  }
}

- (void)receivedOtherMessages:(id)messages fromRequest:(id)request
{
  messagesCopy = messages;
  reply = xpc_dictionary_create_reply(request);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  message = reply;
  xpc_dictionary_set_string(reply, "MSDResult", "YES");
  xpc_connection_send_message(messagesCopy, message);
}

- (BOOL)completed
{
  state = [(MSDPricingUpdateController *)self state];
  if (state - 2 < 2)
  {
    return 1;
  }

  if (state == 1)
  {
    return 0;
  }

  if (state)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknow Pricing app state.", v9, 2u);
    }

    return 1;
  }

  v3 = +[MSDTargetDevice sharedInstance];
  lastRebootTime = [v3 lastRebootTime];
  [lastRebootTime timeIntervalSinceNow];
  v6 = v5 <= -60.0;

  return v6;
}

- (void)stopMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D04C;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)restartMonitor
{
  [(MSDPricingUpdateController *)self stopMonitor];
  v3 = +[MSDTargetDevice sharedInstance];
  aboutToReboot = [v3 aboutToReboot];

  if ((aboutToReboot & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D164;
    block[3] = &unk_100169B70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)pricingUpdateTimeOut:(id)out
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Heart beat monitor timer triggered.", &v13, 2u);
  }

  [(MSDPricingUpdateController *)self stopMonitor];
  if ([(MSDPricingUpdateController *)self state]<= 1)
  {
    [(MSDPricingUpdateController *)self setState:3];
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = 120;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No XPC message from Pricing app for %d seconds.", &v13, 8u);
    }

    v6 = [NSError errorDomainMSDWithCode:3727741024 message:@"Pricing app stopped."];
    v7 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v7 demoUpdateFailed:v6];
  }

  if ([(MSDPricingUpdateController *)self switchModeAfterCompletion])
  {
    v8 = +[MSDTestPreferences sharedInstance];
    timeShowingFatalError = [v8 timeShowingFatalError];

    if (timeShowingFatalError)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109120;
        v14 = timeShowingFatalError;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Override MSDTimeShowingFatalError timeout: %u", &v13, 8u);
      }
    }

    else
    {
      timeShowingFatalError = 900;
    }

    v11 = +[MSDDemoUpdateTimeKeeper sharedInstance];
    v12 = [v11 setCompletionTimeForFatalError:timeShowingFatalError];
  }
}

@end