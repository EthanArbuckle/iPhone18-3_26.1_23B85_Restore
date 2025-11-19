@interface QCAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDServerInteractionController)serverInteractionController;
- (id)_commandHandlers;
- (id)_copyHandlerForCommand:(id)a3 params:(id)a4;
- (void)_didCompleteQueueCheckRequest:(id)a3 completion:(id)a4;
- (void)_handleQueueCheckResponseWithStatus:(int64_t)a3 andBody:(id)a4 completion:(id)a5;
- (void)runWithCompletion:(id)a3;
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

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(QCAction *)self account];
  v6 = [v5 unregisterState];

  if (!v6)
  {
    v7 = [(QCAction *)self commandContext];
    v8 = [v7 pendingActionUUID];
    [(QCAction *)self setCommandContextUUID:v8];

    v9 = [FMDRequestQueueCheck alloc];
    v10 = [(QCAction *)self account];
    v11 = [(FMDRequestQueueCheck *)v9 initWithAccount:v10 shutdownActivityPending:[(QCAction *)self shutdownActivityPending]];

    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10017EDC8;
    v20[3] = &unk_1002CE000;
    objc_copyWeak(&v22, &location);
    v21 = v4;
    [(FMDRequest *)v11 setCompletionHandler:v20];
    v12 = [(QCAction *)self requestDecorator];
    [(FMDRequest *)v11 setDecorator:v12];

    v13 = [(QCAction *)self serverInteractionController];
    v14 = [(QCAction *)self commandContext];
    v15 = [v14 accessory];

    if (v15)
    {
      v16 = [[FMDNetworkAction alloc] initWithRequest:v11 andServerInteractionController:v13];
      [(QCAction *)self setNetworkAction:v16];
      v17 = +[FMDOperationManager sharedManager];
      v18 = [v15 accessoryIdentifier];
      v19 = [v18 stringValue];
      [v17 addAction:v16 forIdentifier:v19];
    }

    else
    {
      [(QCAction *)self setRequest:v11];
      [v13 enqueueRequest:v11];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)willCancelAction
{
  v3 = [(QCAction *)self commandContext];
  v4 = [v3 accessory];

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(QCAction *)self request];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "QCAction(%@) will cancel request(%@) with command context accessory(%@)", &v11, 0x20u);
  }

  if (v4)
  {
    v7 = +[FMDOperationManager sharedManager];
    v8 = [(QCAction *)self networkAction];
    v9 = [v4 accessoryIdentifier];
    v10 = [v9 stringValue];
    [v7 cancelAction:v8 forIdentifier:v10];
  }

  else
  {
    v7 = [(QCAction *)self serverInteractionController];
    v8 = [(QCAction *)self request];
    [v7 cancelRequest:v8];
  }
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 serverInteractionController];
    v6 = [(QCAction *)self serverInteractionController];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_didCompleteQueueCheckRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 willRetry] & 1) == 0)
  {
    v8 = [v6 httpResponseError];
    if (v8 || [v6 httpResponseStatus] < 200 || objc_msgSend(v6, "httpResponseStatus") > 399)
    {
    }

    else if (([v6 cancelled] & 1) == 0)
    {
      v15 = sub_100002880();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 fm_logID];
        v18 = 138412546;
        v19 = v16;
        v20 = 2048;
        v21 = [v6 httpResponseStatus];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: successful with status %ld.", &v18, 0x16u);
      }

      v17 = [v6 httpResponseStatus];
      v10 = [v6 httpResponseBody];
      [(QCAction *)self _handleQueueCheckResponseWithStatus:v17 andBody:v10 completion:v7];
      goto LABEL_12;
    }

    v9 = [v6 cancelled];
    v10 = sub_100002880();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = [v6 fm_logID];
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Cancelled", &v18, 0xCu);
LABEL_11:
      }
    }

    else if (v11)
    {
      v12 = [v6 fm_logID];
      v13 = [v6 httpResponseStatus];
      v14 = [v6 httpResponseError];
      v18 = 138412802;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Error (%ld) %@", &v18, 0x20u);

      goto LABEL_11;
    }

LABEL_12:
  }
}

- (void)_handleQueueCheckResponseWithStatus:(int64_t)a3 andBody:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  switch(a3)
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

  if (!v8 || ![v8 count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v12 = [v8 objectForKeyedSubscript:@"cmd"];
  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412290;
    *&v37[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Command Received: %@", v37, 0xCu);
  }

  v14 = [(QCAction *)self _copyHandlerForCommand:v12 params:v8];
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

  if (v9)
  {
    v9[2](v9);
  }

  switch(a3)
  {
    case 200:
      v20 = sub_100002880();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v21)
        {
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "More messages pending - checking now...", v37, 2u);
        }

        v22 = [QCAction alloc];
        v23 = [(QCAction *)self account];
        v24 = [(QCAction *)self shutdownActivityPending];
        v25 = [(QCAction *)self serverInteractionController];
        v20 = [(QCAction *)v22 initWithAccount:v23 shutdownActivityPending:v24 serverInteractionController:v25];

        v26 = [(QCAction *)self requestDecorator];
        [v20 setRequestDecorator:v26];

        v27 = [(QCAction *)self commandContext];
        [v20 setCommandContext:v27];

        v28 = +[ActionManager sharedManager];
        v29 = [v28 enqueueAction:v20];

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

      v32 = [(QCAction *)self commandContext];
      v20 = [v32 accessory];

      if ([v20 connectionState]== 1)
      {
        v33 = sub_100002880();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [(QCAction *)self commandContextUUID];
          *v37 = 138412290;
          *&v37[4] = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "QCAction marking command complete %@", v37, 0xCu);
        }

        v35 = [(QCAction *)self commandContext];
        v36 = [(QCAction *)self commandContextUUID];
        [v35 setActionCompleted:v36];
      }

      goto LABEL_40;
    case 210:
      v20 = sub_100002880();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        v30 = "No more pending messages on the server 210...";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v30, v37, 2u);
      }

LABEL_40:

      break;
  }
}

- (id)_copyHandlerForCommand:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(QCAction *)self _commandHandlers];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using handler %@ for command type %@", &v15, 0x16u);
  }

  if (v9)
  {
    v11 = +[FMDServiceProvider activeServiceProvider];
    v12 = [[v9 alloc] initWithParams:v7 provider:v11];
    v13 = [(QCAction *)self commandContext];
    [v12 setCommandContext:v13];
  }

  else
  {
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022B20C(v6, v11);
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