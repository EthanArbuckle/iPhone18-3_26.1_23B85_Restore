@interface CDDPaths
+ (id)CDDConfigurationBundlePath;
+ (id)knowledgeDatabaseDirectory;
+ (id)peopleDatabaseDirectory;
+ (id)simulatorHomePathFor:(id)a3;
+ (id)simulatorSharedPathFor:(id)a3;
+ (id)simulatorSystemPathFor:(id)a3 withEnvVar:(id)a4;
+ (id)userLocalKnowledgeDatabaseDirectory;
@end

@implementation CDDPaths

+ (id)simulatorSystemPathFor:(id)a3 withEnvVar:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSProcessInfo processInfo];
  v8 = [v7 environment];
  v9 = [v8 objectForKey:v5];

  v10 = [v9 stringByAppendingString:v6];

  return v10;
}

+ (id)simulatorHomePathFor:(id)a3
{
  v3 = a3;
  v4 = NSHomeDirectory();
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

+ (id)simulatorSharedPathFor:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray arrayWithObject:@"/tmp"];
  [v4 addObject:@"Developer/CoreSimulator/Shared/data"];
  if (v3 && [v3 length])
  {
    [v4 addObject:v3];
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