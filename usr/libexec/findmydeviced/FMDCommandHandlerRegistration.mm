@interface FMDCommandHandlerRegistration
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerRegistration

- (void)handleCommand
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD3D0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
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
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v10 = [commandParams2 objectForKey:@"udid"];
    fm_nullToNil = [v10 fm_nullToNil];

    v23 = completionCopy;
    if ([fm_nullToNil length])
    {
      v12 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [provider accessoryRegistry];
      v14 = [accessoryRegistry accessoryForIdentifier:v12];
    }

    else
    {
      v14 = 0;
    }

    v15 = [FMDActingRequestDecorator alloc];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001DD924;
    v27[3] = &unk_1002CDF18;
    v28 = v14;
    v16 = provider;
    v29 = v16;
    v17 = v14;
    v18 = [(FMDActingRequestDecorator *)v15 initWithDeviceContextGenerator:&stru_1002D12C0 deviceInfoGenerator:v27 serverContextGenerator:0 requestHeaderGenerator:0];
    v19 = [FMDRequestAckRegister alloc];
    account = [v16 account];
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v22 = [(FMDRequestAckRegister *)v19 initWithAccount:account registerCommand:commandParams3 ackURL:v8];

    [(FMDRequest *)v22 setDecorator:v18];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001DD9C0;
    v25[3] = &unk_1002CD1D0;
    completionCopy = v23;
    v26 = v23;
    [(FMDRequest *)v22 setCompletionHandler:v25];
    [v16 enqueueRequest:v22];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the register command because there is no ack URL", buf, 2u);
    }
  }
}

@end