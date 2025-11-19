@interface APJourneySettings
- (id)eCServerURL;
@end

@implementation APJourneySettings

- (id)eCServerURL
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v3 = @"/1/events";
  v4 = @"pcms.apple.com";
  v5 = @"ec";
  v6 = @"https";
  v7 = [NSString stringWithFormat:@"%@://%@.%@%@", @"https", @"ec", @"pcms.apple.com", @"/1/events"];
  v8 = [NSURL URLWithString:v7];
  if (!v2)
  {
    goto LABEL_13;
  }

  v9 = [v2 serverSettings];
  v10 = [v9 objectForKeyedSubscript:@"protocol"];
  if (!v10)
  {
    v10 = [v2 serverSettings];
    v11 = [v10 objectForKeyedSubscript:@"host"];
    if (!v11)
    {
      v11 = [v2 serverSettings];
      v12 = [v11 objectForKeyedSubscript:@"prefix"];
      if (!v12)
      {
        v23 = [v2 serverSettings];
        v24 = [v23 objectForKeyedSubscript:@"path"];

        if (!v24)
        {
          v6 = @"https";
          v5 = @"ec";
          v3 = @"/1/events";
          v4 = @"pcms.apple.com";
          goto LABEL_13;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v25 = v8;
  v13 = [v2 serverSettings];
  v6 = [v13 objectForKeyedSubscript:@"protocol"];

  v14 = [v2 serverSettings];
  v4 = [v14 objectForKeyedSubscript:@"host"];

  v15 = [v2 serverSettings];
  v16 = [v15 objectForKeyedSubscript:@"prefix"];

  v17 = [v2 serverSettings];
  v3 = [v17 objectForKeyedSubscript:@"path"];

  v18 = @"production";
  v5 = [v16 objectForKeyedSubscript:@"production"];
  if (!+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") || ([v2 serverEnvironment], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (([(__CFString *)v18 isEqualToString:@"production"]& 1) == 0)
    {
      v19 = [v16 objectForKeyedSubscript:v18];

      v5 = v19;
    }
  }

  v20 = [NSString stringWithFormat:@"%@://%@.%@%@", v6, v5, v4, v3];

  v21 = [NSURL URLWithString:v20];

  v7 = v20;
  v8 = v21;
LABEL_13:

  return v8;
}

@end