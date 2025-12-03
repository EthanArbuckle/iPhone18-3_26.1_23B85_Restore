@interface FMDCommandHandlerRemoteLock
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerRemoteLock

- (void)handleCommand
{
  provider = [(FMDCommandHandler *)self provider];
  v8 = qword_100314CD0;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v5 = [commandParams objectForKeyedSubscript:@"newPasscode"];

  [provider setPasscodeLock:v5 statusCode:&v8];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithInteger:v8];
  [v6 setObject:v7 forKeyedSubscript:@"status"];

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v6];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v9 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v9 intValue];

  if (v6)
  {
    v11 = intValue;
    v12 = [NSURL URLWithString:v6];
    v13 = [FMDRequestAckLock alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v15 = [(FMDRequestAckLock *)v13 initWithProvider:provider lockCommand:commandParams2 cmdStatusCode:v11 ackURL:v12];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100146878;
    v17[3] = &unk_1002CD1D0;
    v18 = completionCopy;
    [(FMDRequest *)v15 setCompletionHandler:v17];
    [provider enqueueRequest:v15];
  }

  else
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not acking the lock command because there is no ack URL", v16, 2u);
    }
  }
}

@end