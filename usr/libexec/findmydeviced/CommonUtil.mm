@interface CommonUtil
+ (void)handleAlertAction:(id)action;
@end

@implementation CommonUtil

+ (void)handleAlertAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    v8 = [actionCopy objectForKeyedSubscript:@"url"];
    v4 = [actionCopy objectForKeyedSubscript:@"sensitive"];

    bOOLValue = [v4 BOOLValue];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = v6;
    if (bOOLValue)
    {
      [v6 openSensitiveURL:v8 withOptions:0];
    }

    else
    {
      [v6 openURL:v8 configuration:0 completionHandler:&stru_1002CD918];
    }
  }
}

@end