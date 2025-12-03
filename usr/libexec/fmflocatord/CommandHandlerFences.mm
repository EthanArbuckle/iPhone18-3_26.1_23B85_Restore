@interface CommandHandlerFences
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation CommandHandlerFences

- (void)handleCommand
{
  commandParams = [(CommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"fences"];

  v5 = [v4 fm_map:&stru_10005DB10];
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100037C9C(v5, v6);
  }

  commandParams2 = [(CommandHandler *)self commandParams];
  v8 = [commandParams2 objectForKeyedSubscript:@"fenceVersion"];

  commandParams3 = [(CommandHandler *)self commandParams];
  v10 = [commandParams3 objectForKeyedSubscript:@"triggerurl"];

  commandParams4 = [(CommandHandler *)self commandParams];
  v12 = [commandParams4 objectForKeyedSubscript:@"validityDurationInSecs"];

  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    v13 = 0x40BC200000000000;
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100019220;
  v20 = &unk_10005DB38;
  v21 = v5;
  v22 = v8;
  v24 = v13;
  v23 = v10;
  v14 = v10;
  v15 = v8;
  v16 = v5;
  dispatch_async(&_dispatch_main_q, &v17);
  [(CommandHandler *)self didHandleCommandWithAckData:0, v17, v18, v19, v20];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  provider = [(CommandHandler *)self provider];
  commandParams = [(CommandHandler *)self commandParams];
  [provider ackFencesCommand:commandParams withCompletion:completionCopy];
}

@end