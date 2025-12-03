@interface CommandHandler
- (BOOL)isPreviouslyHandledCommand;
- (CommandHandler)initWithParams:(id)params provider:(id)provider;
- (FindBaseServiceProvider)provider;
- (NSDictionary)ackDataForCommand;
- (NSString)commandID;
- (NSString)commandName;
- (id)loggingID;
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)dealloc;
- (void)didHandleCommandWithAckData:(id)data;
- (void)executeCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation CommandHandler

- (CommandHandler)initWithParams:(id)params provider:(id)provider
{
  paramsCopy = params;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CommandHandler;
  v8 = [(CommandHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CommandHandler *)v8 setCommandParams:paramsCopy];
    [(CommandHandler *)v9 setProvider:providerCopy];
  }

  return v9;
}

- (void)executeCommand
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036B10(self, v3);
  }

  [(CommandHandler *)self _beginXPCTransaction];
  v4 = +[StartupRegisterManager sharedInstance];
  [v4 eventDidOccur:9];

  if ([(CommandHandler *)self isPreviouslyHandledCommand])
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100036BD4(self, v5);
    }
  }

  else
  {
    [(CommandHandler *)self handleCommand];
  }

  [(CommandHandler *)self sendAckWithCompletion:&stru_10005D440];
  [(CommandHandler *)self _endXPCTransaction];
}

- (void)dealloc
{
  [(CommandHandler *)self setProvider:0];
  v3.receiver = self;
  v3.super_class = CommandHandler;
  [(CommandHandler *)&v3 dealloc];
}

- (NSString)commandName
{
  commandParams = [(CommandHandler *)self commandParams];
  v3 = [commandParams objectForKeyedSubscript:@"cmd"];

  return v3;
}

- (NSString)commandID
{
  commandParams = [(CommandHandler *)self commandParams];
  v3 = [commandParams objectForKeyedSubscript:@"id"];

  return v3;
}

- (BOOL)isPreviouslyHandledCommand
{
  commandName = [(CommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"command-%@-id", commandName];

  v5 = [FMPreferencesUtil stringForKey:v4 inDomain:@"com.apple.icloud.fmflocatord"];
  if (v5)
  {
    commandID = [(CommandHandler *)self commandID];
    v7 = [commandID isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)ackDataForCommand
{
  commandName = [(CommandHandler *)self commandName];
  v3 = [NSString stringWithFormat:@"command-%@-ackData", commandName];

  v4 = [FMPreferencesUtil dictionaryForKey:v3 inDomain:@"com.apple.icloud.fmflocatord"];

  return v4;
}

- (void)didHandleCommandWithAckData:(id)data
{
  dataCopy = data;
  commandName = [(CommandHandler *)self commandName];
  v11 = [NSString stringWithFormat:@"command-%@-id", commandName];

  commandName2 = [(CommandHandler *)self commandName];
  v7 = [NSString stringWithFormat:@"command-%@-ackData", commandName2];

  commandID = [(CommandHandler *)self commandID];
  [FMPreferencesUtil setString:commandID forKey:v11 inDomain:@"com.apple.icloud.fmflocatord"];

  commandID2 = [(CommandHandler *)self commandID];
  if (commandID2)
  {
    v10 = dataCopy;
  }

  else
  {
    v10 = 0;
  }

  [FMPreferencesUtil setDictionary:v10 forKey:v7 inDomain:@"com.apple.icloud.fmflocatord"];
}

- (void)sendAckWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (id)loggingID
{
  commandName = [(CommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"Command-%@(0x%X)", commandName, self];

  return v4;
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

- (FindBaseServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end