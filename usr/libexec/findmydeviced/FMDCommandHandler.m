@interface FMDCommandHandler
- (BOOL)isPreviouslyHandledCommand;
- (FMDCommandHandler)initWithParams:(id)a3 provider:(id)a4;
- (FMDServiceProvider)provider;
- (NSDictionary)ackDataForCommand;
- (NSString)commandID;
- (NSString)commandName;
- (id)fm_logID;
- (void)dealloc;
- (void)didHandleCommandWithAckData:(id)a3;
- (void)executeCommand;
- (void)sendAckWithCompletion:(id)a3;
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
      v6 = [(FMDCommandHandler *)self fm_logID];
      *buf = 138412290;
      v13 = v6;
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

  v7 = [(FMDCommandHandler *)self provider];
  v8 = [(FMDCommandHandler *)self commandID];
  v9 = [v7 futureForCommandId:v8];

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
  v3 = [(FMDCommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"command-%@-id", v3];

  v5 = [FMPreferencesUtil stringForKey:v4 inDomain:kFMDPrefDomain];
  if (v5 && (-[FMDCommandHandler commandID](self, "commandID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:v5], v6, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = [(FMDCommandHandler *)self commandContext];
    v10 = [v9 lastCompletedIntentDictionary];
    v11 = [v10 objectForKeyedSubscript:@"id"];

    if (v11)
    {
      v12 = [(FMDCommandHandler *)self commandID];
      v8 = [v12 isEqualToString:v11];
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
  v2 = [(FMDCommandHandler *)self commandParams];
  v3 = [v2 objectForKeyedSubscript:@"cmd"];

  return v3;
}

- (NSString)commandID
{
  v2 = [(FMDCommandHandler *)self commandParams];
  v3 = [v2 objectForKeyedSubscript:@"id"];

  return v3;
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id)fm_logID
{
  v3 = [(FMDCommandHandler *)self commandName];
  v4 = [NSString stringWithFormat:@"Command-%@(0x%p)", v3, self];

  return v4;
}

- (FMDCommandHandler)initWithParams:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDCommandHandler;
  v8 = [(FMDCommandHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDCommandHandler *)v8 setCommandParams:v6];
    [(FMDCommandHandler *)v9 setProvider:v7];
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
    v4 = [(FMDCommandHandler *)self commandContext];

    if (v4)
    {
      v3 = &off_1002E8D90;
    }

    else
    {
      v5 = [(FMDCommandHandler *)self commandName];
      v6 = [NSString stringWithFormat:@"command-%@-ackData", v5];

      v3 = [FMPreferencesUtil dictionaryForKey:v6 inDomain:kFMDPrefDomain];
    }
  }

  return v3;
}

- (void)didHandleCommandWithAckData:(id)a3
{
  v12 = a3;
  v4 = [(FMDCommandHandler *)self commandContext];

  if (!v4)
  {
    v5 = [(FMDCommandHandler *)self commandName];
    v6 = [NSString stringWithFormat:@"command-%@-id", v5];

    v7 = [(FMDCommandHandler *)self commandName];
    v8 = [NSString stringWithFormat:@"command-%@-ackData", v7];

    v9 = [(FMDCommandHandler *)self commandID];
    [FMPreferencesUtil setString:v9 forKey:v6 inDomain:kFMDPrefDomain];

    v10 = [(FMDCommandHandler *)self commandID];
    if (v10)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    [FMPreferencesUtil setDictionary:v11 forKey:v8 inDomain:kFMDPrefDomain];
  }

  [(FMDCommandHandler *)self setAckDataForCommand:v12];
  if ([(FMDCommandHandler *)self requiresAsynchronousAck])
  {
    [(FMDCommandHandler *)self sendAckWithCompletion:&stru_1002CF0D0];
  }
}

- (void)sendAckWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

@end