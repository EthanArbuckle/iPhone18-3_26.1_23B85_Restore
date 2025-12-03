@interface DMDPaths
+ (NSString)managedAppsManifest;
+ (NSString)managedNonStoreBooksDirectory;
+ (NSString)managedNonStoreBooksManifestPath;
+ (NSString)managedStoreBooksManifestPath;
+ (NSString)managementPromptPolicyPath;
+ (NSString)mdmFilePath;
+ (NSString)purchasedBooksDirectory;
+ (NSString)purchasedBooksManifest;
+ (NSString)systemLostModeRequestPath;
+ (id)_managedNonStoreBooksSystemGroupContainer;
+ (id)_systemGroupContainerPathWithGroupIdentifier:(id)identifier;
+ (id)_systemProfileLibraryDirectory;
+ (id)_systemProfileStorageDirectory;
+ (id)configurationProfilesSystemGroupContainer;
@end

@implementation DMDPaths

+ (id)configurationProfilesSystemGroupContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005AE30;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF188 != -1)
  {
    dispatch_once(&qword_1000FF188, block);
  }

  v2 = qword_1000FF180;

  return v2;
}

+ (NSString)managementPromptPolicyPath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005AF7C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF198 != -1)
  {
    dispatch_once(&qword_1000FF198, block);
  }

  v2 = qword_1000FF190;

  return v2;
}

+ (NSString)managedAppsManifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B07C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1A8 != -1)
  {
    dispatch_once(&qword_1000FF1A8, block);
  }

  v2 = qword_1000FF1A0;

  return v2;
}

+ (NSString)purchasedBooksManifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B17C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1B8 != -1)
  {
    dispatch_once(&qword_1000FF1B8, block);
  }

  v2 = qword_1000FF1B0;

  return v2;
}

+ (NSString)purchasedBooksDirectory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B27C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1C8 != -1)
  {
    dispatch_once(&qword_1000FF1C8, block);
  }

  v2 = qword_1000FF1C0;

  return v2;
}

+ (NSString)managedStoreBooksManifestPath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B37C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1D8 != -1)
  {
    dispatch_once(&qword_1000FF1D8, block);
  }

  v2 = qword_1000FF1D0;

  return v2;
}

+ (NSString)managedNonStoreBooksDirectory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B47C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1E8 != -1)
  {
    dispatch_once(&qword_1000FF1E8, block);
  }

  v2 = qword_1000FF1E0;

  return v2;
}

+ (NSString)managedNonStoreBooksManifestPath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B57C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF1F8 != -1)
  {
    dispatch_once(&qword_1000FF1F8, block);
  }

  v2 = qword_1000FF1F0;

  return v2;
}

+ (NSString)systemLostModeRequestPath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B67C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF208 != -1)
  {
    dispatch_once(&qword_1000FF208, block);
  }

  v2 = qword_1000FF200;

  return v2;
}

+ (NSString)mdmFilePath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B77C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF218 != -1)
  {
    dispatch_once(&qword_1000FF218, block);
  }

  v2 = qword_1000FF210;

  return v2;
}

+ (id)_systemProfileStorageDirectory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B888;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF228 != -1)
  {
    dispatch_once(&qword_1000FF228, block);
  }

  v2 = qword_1000FF220;

  return v2;
}

+ (id)_systemProfileLibraryDirectory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B988;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF238 != -1)
  {
    dispatch_once(&qword_1000FF238, block);
  }

  v2 = qword_1000FF230;

  return v2;
}

+ (id)_managedNonStoreBooksSystemGroupContainer
{
  v3 = qword_1000FF240;
  if (!qword_1000FF240)
  {
    v4 = [self _systemGroupContainerPathWithGroupIdentifier:@"systemgroup.com.apple.media.books.managed"];
    v5 = qword_1000FF240;
    qword_1000FF240 = v4;

    v3 = qword_1000FF240;
    if (!qword_1000FF240)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100085CB0();
      }

      v3 = qword_1000FF240;
    }
  }

  return v3;
}

+ (id)_systemGroupContainerPathWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 1;
  [identifierCopy UTF8String];
  v4 = container_system_group_path_for_identifier();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100085CF4(identifierCopy, v5);
    }

    v6 = [NSString stringWithCString:v5 encoding:4];
    free(v5);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100085D80(identifierCopy, &v8);
    }

    v6 = 0;
  }

  return v6;
}

@end