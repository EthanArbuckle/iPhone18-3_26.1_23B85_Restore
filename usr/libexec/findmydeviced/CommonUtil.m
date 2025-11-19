@interface CommonUtil
+ (void)handleAlertAction:(id)a3;
@end

@implementation CommonUtil

+ (void)handleAlertAction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v8 = [v3 objectForKeyedSubscript:@"url"];
    v4 = [v3 objectForKeyedSubscript:@"sensitive"];

    v5 = [v4 BOOLValue];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = v6;
    if (v5)
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