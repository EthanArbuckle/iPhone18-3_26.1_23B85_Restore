@interface CommandHandlerRegistration
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation CommandHandlerRegistration

- (void)handleCommand
{
  [(CommandHandlerRegistration *)self _beginXPCTransaction];
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FB7C;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
  [(CommandHandler *)self didHandleCommandWithAckData:0];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  provider = [(CommandHandler *)self provider];
  commandParams = [(CommandHandler *)self commandParams];
  [provider ackRegisterCommand:commandParams withCompletion:completionCopy];
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

@end