@interface NRRepeatingAlertEngineItemLaunchBridge
- (void)launchBridge;
@end

@implementation NRRepeatingAlertEngineItemLaunchBridge

- (void)launchBridge
{
  v2 = [objc_opt_class() launchURL];
  if (v2)
  {
    v3 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v9[0] = FBSOpenApplicationOptionKeyPayloadURL;
    v4 = [NSURL URLWithString:v2];
    v9[1] = FBSOpenApplicationOptionKeyIsSensitiveURL;
    v10[0] = v4;
    v10[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];

    [v3 openApplication:@"com.apple.Bridge" withOptions:v6 completion:&stru_1001796E8];
LABEL_6:

    goto LABEL_7;
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v3 = nr_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10010387C(v3);
    }

    goto LABEL_6;
  }

LABEL_7:
}

@end