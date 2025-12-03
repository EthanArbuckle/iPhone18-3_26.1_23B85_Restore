@interface FMDCommandHandler
- (BOOL)isPreviouslyHandledCommand;
- (FMDCommandHandler)initWithParams:(id)params provider:(id)provider;
- (FMDServiceProvider)provider;
- (NSDictionary)ackDataForCommand;
- (NSString)commandID;
- (NSString)commandName;
- (id)fm_logID;
- (void)dealloc;
- (void)didHandleCommandWithAckData:(id)data;
- (void)executeCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandler

- (void)executeCommand
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100228C2C(self, v3);
  }

  v4 = +[FMDStartupRegisterManager sharedInstance];
  [v4 eventDidOccur:9];

  if ([(FMDCommandHandler *)self isPreviouslyHandledCommand])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDCommandHandler *)self fm_logID];
      *buf = 138412290;
      v13 = fm_logID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ already seen before. Ignoring this & sending the same ack as last time...", buf, 0xCu);
    }

    [(FMDCommandHandler *)self requiresAsynchronousAck];
  }

  else
  {
    [(FMDCommandHandler *)self handleCommand];
    if ([(FMDCommandHandler *)self requiresAsynchronousAck])
    {
      return;
    }
  }

  provider = [(FMDCommandHandler *)self provider];
  commandID = [(FMDCommandHandler *)self commandID];
  v9 = [provider futureForCommandId:commandID];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10015F59C;
    v11[3] = &unk_1002CD7C0;
    v11[4] = self;
    v10 = [v9 addCompletionBlock:v11];
  }

  else
  {
    [(FMDCommandHandler *)self sendAckWithCompletion:&stru_1002CF0B0];
  }
}

- (BOOL)isPreviouslyHandledCommand
{
  commandName = [(FMDCommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"command-%@-id", commandName];

  v5 = [FMPreferencesUtil stringForKey:v4 inDomain:kFMDPrefDomain];
  if (v5 && (-[FMDCommandHandler commandID](self, "commandID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:v5], v6, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    commandContext = [(FMDCommandHandler *)self commandContext];
    lastCompletedIntentDictionary = [commandContext lastCompletedIntentDictionary];
    v11 = [lastCompletedIntentDictionary objectForKeyedSubscript:@"id"];

    if (v11)
    {
      commandID = [(FMDCommandHandler *)self commandID];
      v8 = [commandID isEqualToString:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)commandName
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v3 = [commandParams objectForKeyedSubscript:@"cmd"];

  return v3;
}

- (NSString)commandID
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v3 = [commandParams objectForKeyedSubscript:@"id"];

  return v3;
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id)fm_logID
{
  commandName = [(FMDCommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"Command-%@(0x%p)", commandName, self];

  return v4;
}

- (FMDCommandHandler)initWithParams:(id)params provider:(id)provider
{
  paramsCopy = params;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = FMDCommandHandler;
  v8 = [(FMDCommandHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDCommandHandler *)v8 setCommandParams:paramsCopy];
    [(FMDCommandHandler *)v9 setProvider:providerCopy];
    [(FMDCommandHandler *)v9 setRequiresAsynchronousAck:0];
  }

  return v9;
}

- (void)dealloc
{
  [(FMDCommandHandler *)self setProvider:0];
  v3.receiver = self;
  v3.super_class = FMDCommandHandler;
  [(FMDCommandHandler *)&v3 dealloc];
}

- (NSDictionary)ackDataForCommand
{
  v3 = self->_ackDataForCommand;
  if (!v3)
  {
    commandContext = [(FMDCommandHandler *)self commandContext];

    if (commandContext)
    {
      v3 = &off_1002E8D90;
    }

    else
    {
      commandName = [(FMDCommandHandler *)self commandName];
      v6 = [NSString stringWithFormat:@"command-%@-ackData", commandName];

      v3 = [FMPreferencesUtil dictionaryForKey:v6 inDomain:kFMDPrefDomain];
    }
  }

  return v3;
}

- (void)didHandleCommandWithAckData:(id)data
{
  dataCopy = data;
  commandContext = [(FMDCommandHandler *)self commandContext];

  if (!commandContext)
  {
    commandName = [(FMDCommandHandler *)self commandName];
    v6 = [NSString stringWithFormat:@"command-%@-id", commandName];

    commandName2 = [(FMDCommandHandler *)self commandName];
    v8 = [NSString stringWithFormat:@"command-%@-ackData", commandName2];

    commandID = [(FMDCommandHandler *)self commandID];
    [FMPreferencesUtil setString:commandID forKey:v6 inDomain:kFMDPrefDomain];

    commandID2 = [(FMDCommandHandler *)self commandID];
    if (commandID2)
    {
      v11 = dataCopy;
    }

    else
    {
      v11 = 0;
    }

    [FMPreferencesUtil setDictionary:v11 forKey:v8 inDomain:kFMDPrefDomain];
  }

  [(FMDCommandHandler *)self setAckDataForCommand:dataCopy];
  if ([(FMDCommandHandler *)self requiresAsynchronousAck])
  {
    [(FMDCommandHandler *)self sendAckWithCompletion:&stru_1002CF0D0];
  }
}

- (void)sendAckWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

@end