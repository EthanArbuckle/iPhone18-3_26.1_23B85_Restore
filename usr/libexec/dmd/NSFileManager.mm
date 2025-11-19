@interface NSFileManager
+ (id)dmd_legacyUserConfigurationEngineDatabaseURL;
+ (id)dmd_systemConfigurationDatabaseURL;
+ (id)dmd_systemConfigurationEngineDirectoryURL;
+ (id)dmd_systemDMDDirectoryURL;
+ (id)dmd_systemLibraryURL;
+ (id)dmd_userConfigurationDatabaseURL;
+ (id)dmd_userConfigurationEngineDirectoryURL;
+ (id)dmd_userDMDDirectoryURL;
+ (id)dmd_userDarwinUserTempDirectoryURL;
+ (id)dmd_userEffectivePoliciesDatabaseURL;
+ (id)dmd_userFontDatabaseDirectoryURL;
+ (id)dmd_userHomeURL;
+ (id)dmd_userImageDatabaseDirectoryURL;
+ (id)dmd_userLibraryURL;
+ (void)dmd_createUserDMDDirectoryDataVault;
+ (void)dmd_setUserDirSuffix:(char *)a3;
@end

@implementation NSFileManager

+ (id)dmd_systemLibraryURL
{
  if (qword_1000FF370 != -1)
  {
    sub_100088074();
  }

  v3 = qword_1000FF368;

  return v3;
}

+ (id)dmd_systemDMDDirectoryURL
{
  v2 = [a1 dmd_systemLibraryURL];
  v3 = [v2 URLByAppendingPathComponent:@"dmd" isDirectory:1];

  return v3;
}

+ (id)dmd_systemConfigurationEngineDirectoryURL
{
  v2 = [a1 dmd_systemDMDDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"ConfigurationEngine" isDirectory:1];

  return v3;
}

+ (id)dmd_systemConfigurationDatabaseURL
{
  v2 = [a1 dmd_systemConfigurationEngineDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Database" isDirectory:0];

  return v3;
}

+ (id)dmd_userHomeURL
{
  if (qword_1000FF380 != -1)
  {
    sub_100088088();
  }

  v3 = qword_1000FF378;

  return v3;
}

+ (id)dmd_userLibraryURL
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B560;
  block[3] = &unk_1000CE018;
  block[4] = a1;
  if (qword_1000FF390 != -1)
  {
    dispatch_once(&qword_1000FF390, block);
  }

  v2 = qword_1000FF388;

  return v2;
}

+ (id)dmd_userDarwinUserTempDirectoryURL
{
  if (qword_1000FF3A0 != -1)
  {
    sub_100088244();
  }

  v3 = qword_1000FF398;

  return v3;
}

+ (id)dmd_userDMDDirectoryURL
{
  v2 = [a1 dmd_userLibraryURL];
  v3 = [v2 URLByAppendingPathComponent:@"dmd" isDirectory:1];

  return v3;
}

+ (id)dmd_userConfigurationEngineDirectoryURL
{
  v2 = [a1 dmd_userDMDDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"ConfigurationEngine" isDirectory:1];

  return v3;
}

+ (id)dmd_userConfigurationDatabaseURL
{
  v2 = [a1 dmd_userConfigurationEngineDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Database" isDirectory:0];

  return v3;
}

+ (id)dmd_userImageDatabaseDirectoryURL
{
  v2 = [a1 dmd_userConfigurationEngineDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Images" isDirectory:1];

  return v3;
}

+ (id)dmd_userFontDatabaseDirectoryURL
{
  v2 = [a1 dmd_userConfigurationEngineDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Font" isDirectory:1];

  return v3;
}

+ (id)dmd_userEffectivePoliciesDatabaseURL
{
  v2 = [a1 dmd_userDMDDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Policies" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"Database" isDirectory:0];

  return v4;
}

+ (void)dmd_createUserDMDDirectoryDataVault
{
  v2 = [a1 dmd_userDMDDirectoryURL];
  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v7];
  v5 = v7;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    sub_100088390(v5);
  }

  [v2 fileSystemRepresentation];
  if (rootless_convert_to_datavault())
  {
    sub_10008841C();
  }
}

+ (void)dmd_setUserDirSuffix:(char *)a3
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_1000884B8();
  }
}

+ (id)dmd_legacyUserConfigurationEngineDatabaseURL
{
  v2 = [a1 dmd_userDMDDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"Configurations" isDirectory:0];

  return v3;
}

@end