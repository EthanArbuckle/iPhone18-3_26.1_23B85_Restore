@interface FMDMagSafeSetupLauncher
- (FMDMagSafeSetupLauncher)init;
- (void)_launchSetupFlow:(id)flow;
@end

@implementation FMDMagSafeSetupLauncher

- (FMDMagSafeSetupLauncher)init
{
  v5.receiver = self;
  v5.super_class = FMDMagSafeSetupLauncher;
  v2 = [(FMDMagSafeSetupLauncher *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_launchSetupFlow:" name:@"com.apple.accessories.connection.passedMFi4Auth" object:0];
    [v3 addObserver:v2 selector:"_launchSetupFlow:" name:@"com.apple.icloud.FindMy.addMagSafeAccessory" object:0];
  }

  return v2;
}

- (void)_launchSetupFlow:(id)flow
{
  flowCopy = flow;
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = flowCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got notification %@", buf, 0xCu);
  }

  v6 = [FMDExtExtensionHelper getAccessoryProxyForId:@"com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FMDMagSafeExtension" withDelegate:0];
  [(FMDMagSafeSetupLauncher *)self setSetupAgent:v6];

  v12[0] = @"receivedNotificaiton";
  v11[0] = @"context";
  v11[1] = @"notificationName";
  name = [flowCopy name];
  v12[1] = name;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  setupAgent = [(FMDMagSafeSetupLauncher *)self setupAgent];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10017BCD4;
  v10[3] = &unk_1002CD868;
  v10[4] = self;
  [setupAgent launchSetupModuleWithInfo:v8 withCompletion:v10];
}

@end