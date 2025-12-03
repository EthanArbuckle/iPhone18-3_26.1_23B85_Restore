@interface QCAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDServerInteractionController)serverInteractionController;
- (id)_commandHandlers;
- (id)_copyHandlerForCommand:(id)command params:(id)params;
- (void)_didCompleteQueueCheckRequest:(id)request completion:(id)completion;
- (void)_handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body completion:(id)completion;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation QCAction

- (id)_commandHandlers
{
  v2 = qword_100314788;
  if (qword_100314788)
  {
    goto LABEL_10;
  }

  v12[0] = @"register";
  v13[0] = objc_opt_class();
  v12[1] = @"message";
  v13[1] = objc_opt_class();
  v12[2] = @"locate";
  v13[2] = objc_opt_class();
  v12[3] = @"dataUpdate";
  v13[3] = objc_opt_class();
  v12[4] = @"wipe";
  v13[4] = objc_opt_class();
  v12[5] = @"notify";
  v13[5] = objc_opt_class();
  v12[6] = @"lock";
  v13[6] = objc_opt_class();
  v12[7] = @"identityV5";
  v13[7] = objc_opt_class();
  v12[8] = @"lost";
  v13[8] = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:9];
  v4 = [v3 mutableCopy];
  v5 = qword_100314788;
  qword_100314788 = v4;

  v6 = +[FMSystemInfo sharedInstance];
  if ([v6 isInternalBuild])
  {
    v7 = [FMPreferencesUtil BOOLForKey:@"DisableRemoteAccessoryConfig" inDomain:kFMDNotBackedUpPrefDomain];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [qword_100314788 fm_safeSetObject:objc_opt_class() forKey:@"accessory_config"];
LABEL_7:
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = qword_100314788;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Command handlers : %@", &v10, 0xCu);
  }

  v2 = qword_100314788;
LABEL_10:

  return v2;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(QCAction *)self account];
  unregisterState = [account unregisterState];

  if (!unregisterState)
  {
    commandContext = [(QCAction *)self commandContext];
    pendingActionUUID = [commandContext pendingActionUUID];
    [(QCAction *)self setCommandContextUUID:pendingActionUUID];

    v9 = [FMDRequestQueueCheck alloc];
    account2 = [(QCAction *)self account];
    v11 = [(FMDRequestQueueCheck *)v9 initWithAccount:account2 shutdownActivityPending:[(QCAction *)self shutdownActivityPending]];

    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10017EDC8;
    v20[3] = &unk_1002CE000;
    objc_copyWeak(&v22, &location);
    v21 = completionCopy;
    [(FMDRequest *)v11 setCompletionHandler:v20];
    requestDecorator = [(QCAction *)self requestDecorator];
    [(FMDRequest *)v11 setDecorator:requestDecorator];

    serverInteractionController = [(QCAction *)self serverInteractionController];
    commandContext2 = [(QCAction *)self commandContext];
    accessory = [commandContext2 accessory];

    if (accessory)
    {
      v16 = [[FMDNetworkAction alloc] initWithRequest:v11 andServerInteractionController:serverInteractionController];
      [(QCAction *)self setNetworkAction:v16];
      v17 = +[FMDOperationManager sharedManager];
      accessoryIdentifier = [accessory accessoryIdentifier];
      stringValue = [accessoryIdentifier stringValue];
      [v17 addAction:v16 forIdentifier:stringValue];
    }

    else
    {
      [(QCAction *)self setRequest:v11];
      [serverInteractionController enqueueRequest:v11];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)willCancelAction
{
  commandContext = [(QCAction *)self commandContext];
  accessory = [commandContext accessory];

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    request = [(QCAction *)self request];
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = request;
    v15 = 2112;
    v16 = accessory;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QCAction(%@) will cancel request(%@) with command context accessory(%@)", &v11, 0x20u);
  }

  if (accessory)
  {
    serverInteractionController = +[FMDOperationManager sharedManager];
    networkAction = [(QCAction *)self networkAction];
    accessoryIdentifier = [accessory accessoryIdentifier];
    stringValue = [accessoryIdentifier stringValue];
    [serverInteractionController cancelAction:networkAction forIdentifier:stringValue];
  }

  else
  {
    serverInteractionController = [(QCAction *)self serverInteractionController];
    networkAction = [(QCAction *)self request];
    [serverInteractionController cancelRequest:networkAction];
  }
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    serverInteractionController = [actionCopy serverInteractionController];
    serverInteractionController2 = [(QCAction *)self serverInteractionController];
    v7 = serverInteractionController == serverInteractionController2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_didCompleteQueueCheckRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (([requestCopy willRetry] & 1) == 0)
  {
    httpResponseError = [requestCopy httpResponseError];
    if (httpResponseError || [requestCopy httpResponseStatus] < 200 || objc_msgSend(requestCopy, "httpResponseStatus") > 399)
    {
    }

    else if (([requestCopy cancelled] & 1) == 0)
    {
      v15 = sub_100002880();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [requestCopy fm_logID];
        v18 = 138412546;
        v19 = fm_logID;
        v20 = 2048;
        httpResponseStatus = [requestCopy httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", &v18, 0x16u);
      }

      httpResponseStatus2 = [requestCopy httpResponseStatus];
      httpResponseBody = [requestCopy httpResponseBody];
      [(QCAction *)self _handleQueueCheckResponseWithStatus:httpResponseStatus2 andBody:httpResponseBody completion:completionCopy];
      goto LABEL_12;
    }

    cancelled = [requestCopy cancelled];
    httpResponseBody = sub_100002880();
    v11 = os_log_type_enabled(httpResponseBody, OS_LOG_TYPE_DEFAULT);
    if (cancelled)
    {
      if (v11)
      {
        fm_logID2 = [requestCopy fm_logID];
        v18 = 138412290;
        v19 = fm_logID2;
        _os_log_impl(&_mh_execute_header, httpResponseBody, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v18, 0xCu);
LABEL_11:
      }
    }

    else if (v11)
    {
      fm_logID2 = [requestCopy fm_logID];
      httpResponseStatus3 = [requestCopy httpResponseStatus];
      httpResponseError2 = [requestCopy httpResponseError];
      v18 = 138412802;
      v19 = fm_logID2;
      v20 = 2048;
      httpResponseStatus = httpResponseStatus3;
      v22 = 2112;
      v23 = httpResponseError2;
      _os_log_impl(&_mh_execute_header, httpResponseBody, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v18, 0x20u);

      goto LABEL_11;
    }

LABEL_12:
  }
}

- (void)_handleQueueCheckResponseWithStatus:(int64_t)status andBody:(id)body completion:(id)completion
{
  bodyCopy = body;
  completionCopy = completion;
  switch(status)
  {
    case 200:
      v10 = 5;
LABEL_7:
      v11 = +[FMDStartupRegisterManager sharedInstance];
      [v11 eventDidOccur:v10];

      break;
    case 204:
      v10 = 6;
      goto LABEL_7;
    case 210:
      v10 = 7;
      goto LABEL_7;
  }

  if (!bodyCopy || ![bodyCopy count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v12 = [bodyCopy objectForKeyedSubscript:@"cmd"];
  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412290;
    *&v37[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Command Received: %@", v37, 0xCu);
  }

  v14 = [(QCAction *)self _copyHandlerForCommand:v12 params:bodyCopy];
  v15 = v14;
  v16 = v14 != 0;
  if (v14)
  {
    [v14 executeCommand];
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138412290;
      *&v37[4] = v12;
      v18 = "Successfully finished command %@";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, v37, 0xCu);
    }
  }

  else
  {
    v17 = sub_100002880();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138412290;
      *&v37[4] = v12;
      v18 = "No handler found for command %@";
      goto LABEL_18;
    }
  }

LABEL_20:
  v19 = +[FMDStartupRegisterManager sharedInstance];
  [v19 eventDidOccur:8];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  switch(status)
  {
    case 200:
      accessory = sub_100002880();
      v21 = os_log_type_enabled(accessory, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v21)
        {
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, accessory, OS_LOG_TYPE_DEFAULT, "More messages pending - checking now...", v37, 2u);
        }

        v22 = [QCAction alloc];
        account = [(QCAction *)self account];
        shutdownActivityPending = [(QCAction *)self shutdownActivityPending];
        serverInteractionController = [(QCAction *)self serverInteractionController];
        accessory = [(QCAction *)v22 initWithAccount:account shutdownActivityPending:shutdownActivityPending serverInteractionController:serverInteractionController];

        requestDecorator = [(QCAction *)self requestDecorator];
        [accessory setRequestDecorator:requestDecorator];

        commandContext = [(QCAction *)self commandContext];
        [accessory setCommandContext:commandContext];

        v28 = +[ActionManager sharedManager];
        v29 = [v28 enqueueAction:accessory];

        goto LABEL_40;
      }

      if (v21)
      {
        *v37 = 0;
        v30 = "Not checking for new messages - previous command was not successful or duplicate";
        goto LABEL_33;
      }

      goto LABEL_40;
    case 204:
      v31 = sub_100002880();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No more pending messages on the server 204...", v37, 2u);
      }

      commandContext2 = [(QCAction *)self commandContext];
      accessory = [commandContext2 accessory];

      if ([accessory connectionState]== 1)
      {
        v33 = sub_100002880();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          commandContextUUID = [(QCAction *)self commandContextUUID];
          *v37 = 138412290;
          *&v37[4] = commandContextUUID;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "QCAction marking command complete %@", v37, 0xCu);
        }

        commandContext3 = [(QCAction *)self commandContext];
        commandContextUUID2 = [(QCAction *)self commandContextUUID];
        [commandContext3 setActionCompleted:commandContextUUID2];
      }

      goto LABEL_40;
    case 210:
      accessory = sub_100002880();
      if (os_log_type_enabled(accessory, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        v30 = "No more pending messages on the server 210...";
LABEL_33:
        _os_log_impl(&_mh_execute_header, accessory, OS_LOG_TYPE_DEFAULT, v30, v37, 2u);
      }

LABEL_40:

      break;
  }
}

- (id)_copyHandlerForCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  _commandHandlers = [(QCAction *)self _commandHandlers];
  v9 = [_commandHandlers objectForKeyedSubscript:commandCopy];
  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = commandCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using handler %@ for command type %@", &v15, 0x16u);
  }

  if (v9)
  {
    v11 = +[FMDServiceProvider activeServiceProvider];
    v12 = [[v9 alloc] initWithParams:paramsCopy provider:v11];
    commandContext = [(QCAction *)self commandContext];
    [v12 setCommandContext:commandContext];
  }

  else
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022B20C(commandCopy, v11);
    }

    v12 = 0;
  }

  return v12;
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end