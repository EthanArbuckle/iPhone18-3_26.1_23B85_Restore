@interface CDDPaths
+ (id)CDDConfigurationBundlePath;
+ (id)knowledgeDatabaseDirectory;
+ (id)peopleDatabaseDirectory;
+ (id)simulatorHomePathFor:(id)for;
+ (id)simulatorSharedPathFor:(id)for;
+ (id)simulatorSystemPathFor:(id)for withEnvVar:(id)var;
+ (id)userLocalKnowledgeDatabaseDirectory;
@end

@implementation CDDPaths

+ (id)simulatorSystemPathFor:(id)for withEnvVar:(id)var
{
  varCopy = var;
  forCopy = for;
  v7 = +[NSProcessInfo processInfo];
  environment = [v7 environment];
  v9 = [environment objectForKey:varCopy];

  v10 = [v9 stringByAppendingString:forCopy];

  return v10;
}

+ (id)simulatorHomePathFor:(id)for
{
  forCopy = for;
  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingString:forCopy];

  return v5;
}

+ (id)simulatorSharedPathFor:(id)for
{
  forCopy = for;
  v4 = [NSMutableArray arrayWithObject:@"/tmp"];
  [v4 addObject:@"Developer/CoreSimulator/Shared/data"];
  if (forCopy && [forCopy length])
  {
    [v4 addObject:forCopy];
  }

  v5 = [NSString pathWithComponents:v4];

  return v5;
}

+ (id)CDDConfigurationBundlePath
{
  v2 = +[CDDPaths CDDDatabaseDirectory];
  v3 = [v2 stringByAppendingString:@"CoreDuetDaemonConfig.bundle"];

  return v3;
}

+ (id)knowledgeDatabaseDirectory
{
  v2 = +[CDDPaths CDDDatabaseDirectory];
  v6[0] = v2;
  v6[1] = @"Knowledge";
  v6[2] = &stru_10003DC70;
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

+ (id)peopleDatabaseDirectory
{
  v2 = +[CDDPaths CDDDatabaseDirectory];
  v6[0] = v2;
  v6[1] = @"People";
  v6[2] = &stru_10003DC70;
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

+ (id)userLocalKnowledgeDatabaseDirectory
{
  v2 = +[CDDPaths CDDUserDatabaseDirectory];
  v6[0] = v2;
  v6[1] = @"Knowledge";
  v6[2] = &stru_10003DC70;
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

@end