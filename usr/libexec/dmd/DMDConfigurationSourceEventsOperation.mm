@interface DMDConfigurationSourceEventsOperation
- (void)main;
@end

@implementation DMDConfigurationSourceEventsOperation

- (void)main
{
  v3 = [(DMDConfigurationSourceTaskOperation *)self controller];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100030C80;
    v6[3] = &unk_1000CEC58;
    v6[4] = self;
    [v4 configurationSourceController:v3 fetchEventsWithCompletionHandler:v6];
  }

  else
  {
    v5 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080D08();
    }

    [(DMDConfigurationSourceEventsOperation *)self endOperationWithResultObject:0];
  }
}

@end