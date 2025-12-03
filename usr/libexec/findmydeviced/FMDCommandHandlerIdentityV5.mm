@interface FMDCommandHandlerIdentityV5
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerIdentityV5

- (void)handleCommand
{
  v3 = +[FMXPCTransactionManager sharedInstance];
  [v3 beginTransaction:@"kFMDCommandHandlerIdentityV5TransactionName"];

  v4 = +[FMDStartupRegisterManager sharedInstance];
  [v4 eventDidOccur:11];

  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"timeoutInSec"];
  if (v6)
  {
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v8 = [commandParams2 objectForKeyedSubscript:@"timeoutInSec"];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 60;
  }

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams3 objectForKeyedSubscript:@"id"];

  v12 = [[FMDIdentityInfo alloc] initWithVersion:5 timeoutIntervalInSec:integerValue commandID:v11];
  v13 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017E630;
  block[3] = &unk_1002CD478;
  block[4] = self;
  v18 = v12;
  v14 = v12;
  dispatch_after(v13, &_dispatch_main_q, block);
  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Scheduled identityV5", v16, 2u);
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [FMDRequestAckIdentity alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v11 = [(FMDRequestAckIdentity *)v9 initWithProvider:provider identityCommand:commandParams2 commandFailureReason:0 ackURL:v8];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10017E840;
    v13[3] = &unk_1002CD1D0;
    v14 = completionCopy;
    [(FMDRequest *)v11 setCompletionHandler:v13];
    [provider enqueueRequest:v11];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the identity command because there is no ack URL", v12, 2u);
    }
  }
}

@end