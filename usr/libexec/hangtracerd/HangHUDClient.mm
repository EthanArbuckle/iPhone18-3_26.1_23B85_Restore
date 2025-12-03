@interface HangHUDClient
+ (id)sharedInstance;
- (HangHUDClient)initWithIdentifier:(id)identifier;
- (HangHUDClientDelegate)delegate;
- (id)obtainKeepHangHUDAliveAssertion:(id)assertion;
- (void)clearHUDWithCompletion:(id)completion;
- (void)sendHangHUDInfo:(id)info completion:(id)completion;
- (void)sendHudConfiguration:(id)configuration completion:(id)completion;
- (void)sendMonitoredStates:(id)states completion:(id)completion;
- (void)sendProcExitRecord:(id)record completion:(id)completion;
@end

@implementation HangHUDClient

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000147C8;
  block[3] = &unk_100055408;
  block[4] = self;
  if (qword_100067A08 != -1)
  {
    dispatch_once(&qword_100067A08, block);
  }

  v2 = qword_100067A00;

  return v2;
}

- (HangHUDClient)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HangHUDClient;
  v5 = [(HangHUDClient *)&v20 init];
  if (v5)
  {
    v6 = +[HangHUDServiceSpecification machName];
    v7 = +[HangHUDServiceSpecification identifier];
    v8 = [BSServiceConnectionEndpoint endpointForMachName:v6 service:v7 instance:0];
    endpoint = v5->_endpoint;
    v5->_endpoint = v8;

    v10 = v5->_endpoint;
    if (v10)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100014A58;
      v18[3] = &unk_100055430;
      v19 = identifierCopy;
      v11 = [BSServiceConnection connectionWithEndpoint:v10 clientContextBuilder:v18];
      connection = v5->_connection;
      v5->_connection = v11;

      v13 = v5->_connection;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100014AD0;
      v16[3] = &unk_100055480;
      v17 = v5;
      [(BSServiceConnectionClient *)v13 configureConnection:v16];

      v14 = v19;
    }

    else
    {
      v14 = sub_100003824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100031ED8(v14);
      }
    }
  }

  return v5;
}

- (id)obtainKeepHangHUDAliveAssertion:(id)assertion
{
  assertionCopy = assertion;
  v4 = [RBSAssertion alloc];
  v5 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.HangHUD"];
  v6 = [RBSTarget targetWithProcessIdentity:v5];
  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v4 initWithExplanation:assertionCopy target:v6 attributes:v8];

  return v9;
}

- (void)sendHangHUDInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100031FA0(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveHangHUDInfo:infoCopy completion:completionCopy];
  }

  else
  {
    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100032018(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendProcExitRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100032090(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveProcExitRecord:recordCopy completion:completionCopy];
  }

  else
  {
    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100032018(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendHudConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100032108(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveHudConfiguration:configurationCopy completion:completionCopy];
  }

  else
  {
    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100032018(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendMonitoredStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100032180(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveMonitoredStates:statesCopy completion:completionCopy];
  }

  else
  {
    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100032018(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)clearHUDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100003824();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000321F8(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v14 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v25 = v14;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v15];

  if (v16)
  {
    [v16 clearHUDWithCompletion:completionCopy];
  }

  else
  {
    v17 = sub_100003824();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100032018(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

- (HangHUDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end