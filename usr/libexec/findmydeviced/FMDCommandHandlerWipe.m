@interface FMDCommandHandlerWipe
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation FMDCommandHandlerWipe

- (void)handleCommand
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FMDCommandHandler *)self fm_logID];
    *buf = 138412290;
    v44 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Handling a Remote Wipe command from server...", buf, 0xCu);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [(FMDCommandHandler *)self commandParams];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [(FMDCommandHandler *)self commandParams];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (CFPropertyListIsValid(v14, kCFPropertyListBinaryFormat_v1_0))
        {
          [v6 setObject:v14 forKeyedSubscript:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v9);
  }

  [v5 setObject:v6 forKeyedSubscript:@"commandParams"];
  v15 = [(FMDCommandHandler *)self provider];
  v16 = [v15 account];
  v17 = [v16 authId];
  [v5 setObject:v17 forKeyedSubscript:@"authId"];

  v18 = [(FMDCommandHandler *)self commandParams];
  v19 = [v18 objectForKeyedSubscript:@"mode"];

  if (+[FMDPreferencesMgr simulateWipe](FMDPreferencesMgr, "simulateWipe") || [v19 isEqualToString:@"fake"])
  {
    [v5 setObject:@"fake" forKeyedSubscript:@"wipeMode"];
  }

  v20 = [(FMDCommandHandler *)self commandParams];
  v21 = [v20 objectForKeyedSubscript:@"maxDelayInSecs"];
  [v21 doubleValue];
  v23 = v22;

  v24 = [(FMDCommandHandler *)self commandParams];
  v25 = [v24 objectForKeyedSubscript:@"message"];

  v26 = [(FMDCommandHandler *)self commandParams];
  v27 = [v26 objectForKeyedSubscript:@"ownerNbr"];

  v28 = sub_100002880();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = v25;
    v45 = 2112;
    v46 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Lock screen message : %@, phone number : %@", buf, 0x16u);
  }

  if ([(__CFString *)v25 length]|| [(__CFString *)v27 length])
  {
    v29 = sub_100002880();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Saving lock screen info to be preserved across wipe", buf, 2u);
    }

    v41[0] = @"lostModeEnabled";
    v41[1] = @"lostModeMessage";
    v30 = &stru_1002DCE08;
    if (v25)
    {
      v31 = v25;
    }

    else
    {
      v31 = &stru_1002DCE08;
    }

    v42[0] = &__kCFBooleanTrue;
    v42[1] = v31;
    v41[2] = @"lostModeOwnerNumber";
    if (v27)
    {
      v30 = v27;
    }

    v42[2] = v30;
    v32 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    [FMDPreferencesMgr setFMIPWipeLostModeInfo:v32];
  }

  [FMDPreferencesMgr setWipeInfo:v5];
  [FMDPreferencesMgr setWipeState:1];
  [(FMDCommandHandler *)self provider];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10013EA8C;
  v34[3] = &unk_1002CDE08;
  v35 = v34[4] = self;
  v36 = v23;
  v33 = v35;
  [FMDDispatchTransaction dispatchTransactionAsync:&_dispatch_main_q transactionName:@"FMDCommandHandlerWipeDispatchAction" block:v34];
}

- (void)sendAckWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

@end