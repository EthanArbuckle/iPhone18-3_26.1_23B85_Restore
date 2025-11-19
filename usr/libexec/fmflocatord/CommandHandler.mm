@interface CommandHandler
- (BOOL)isPreviouslyHandledCommand;
- (CommandHandler)initWithParams:(id)a3 provider:(id)a4;
- (FindBaseServiceProvider)provider;
- (NSDictionary)ackDataForCommand;
- (NSString)commandID;
- (NSString)commandName;
- (id)loggingID;
- (void)_beginXPCTransaction;
- (void)_endXPCTransaction;
- (void)dealloc;
- (void)didHandleCommandWithAckData:(id)a3;
- (void)executeCommand;
- (void)sendAckWithCompletion:(id)a3;
@end

@implementation CommandHandler

- (CommandHandler)initWithParams:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CommandHandler;
  v8 = [(CommandHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CommandHandler *)v8 setCommandParams:v6];
    [(CommandHandler *)v9 setProvider:v7];
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
  v2 = [(CommandHandler *)self commandParams];
  v3 = [v2 objectForKeyedSubscript:@"cmd"];

  return v3;
}

- (NSString)commandID
{
  v2 = [(CommandHandler *)self commandParams];
  v3 = [v2 objectForKeyedSubscript:@"id"];

  return v3;
}

- (BOOL)isPreviouslyHandledCommand
{
  v3 = [(CommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"command-%@-id", v3];

  v5 = [FMPreferencesUtil stringForKey:v4 inDomain:@"com.apple.icloud.fmflocatord"];
  if (v5)
  {
    v6 = [(CommandHandler *)self commandID];
    v7 = [v6 isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)ackDataForCommand
{
  v2 = [(CommandHandler *)self commandName];
  v3 = [NSString stringWithFormat:@"command-%@-ackData", v2];

  v4 = [FMPreferencesUtil dictionaryForKey:v3 inDomain:@"com.apple.icloud.fmflocatord"];

  return v4;
}

- (void)didHandleCommandWithAckData:(id)a3
{
  v4 = a3;
  v5 = [(CommandHandler *)self commandName];
  v11 = [NSString stringWithFormat:@"command-%@-id", v5];

  v6 = [(CommandHandler *)self commandName];
  v7 = [NSString stringWithFormat:@"command-%@-ackData", v6];

  v8 = [(CommandHandler *)self commandID];
  [FMPreferencesUtil setString:v8 forKey:v11 inDomain:@"com.apple.icloud.fmflocatord"];

  v9 = [(CommandHandler *)self commandID];
  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  [FMPreferencesUtil setDictionary:v10 forKey:v7 inDomain:@"com.apple.icloud.fmflocatord"];
}

- (void)sendAckWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (id)loggingID
{
  v3 = [(CommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"Command-%@(0x%X)", v3, self];

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