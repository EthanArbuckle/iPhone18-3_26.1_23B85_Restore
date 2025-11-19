@interface RDPaths
+ (BOOL)isDataSeparationEnabled;
+ (NSURL)defaultApplicationDocumentsURL;
+ (NSURL)locationBundleURL;
+ (id)defaultReminderDataContainerURL;
+ (id)urlForIsolatedContainerWithIdentifier:(id)a3;
+ (void)unitTest_setDefaultApplicationDocumentsURL:(id)a3;
@end

@implementation RDPaths

+ (NSURL)locationBundleURL
{
  if (qword_1009528D0 != -1)
  {
    sub_10075FC34();
  }

  v3 = qword_1009528C8;

  return v3;
}

+ (NSURL)defaultApplicationDocumentsURL
{
  if ([a1 isDataSeparationEnabled])
  {
    if (qword_1009528D8 != -1)
    {
      sub_10075FC48();
    }

    v2 = qword_1009528E0;
    if (!qword_1009528E0)
    {
      dispatch_sync(qword_1009528C0, &stru_1008D9948);
      v2 = qword_1009528E0;
    }

    v3 = v2;
  }

  else
  {
    v3 = +[REMPaths legacy_applicationDocumentsURL];
  }

  return v3;
}

+ (id)defaultReminderDataContainerURL
{
  v2 = [a1 defaultApplicationDocumentsURL];
  v3 = [v2 rem_URLByAppendingReminderDataContainerPathComponent];

  return v3;
}

+ (BOOL)isDataSeparationEnabled
{
  v2 = [RDFeatureFlagsObjCWrapper wrappedFeatureFlagsWithRawValue:@"dataSeparation"];
  v3 = [v2 isEnabled];

  return v3;
}

+ (id)urlForIsolatedContainerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultApplicationDocumentsURL];
  v6 = [v5 URLByAppendingPathComponent:@"IsolatedContainers/" isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:v4 isDirectory:1];

  return v7;
}

+ (void)unitTest_setDefaultApplicationDocumentsURL:(id)a3
{
  v4 = a3;
  if (qword_1009528D8 != -1)
  {
    sub_10075FC5C();
  }

  v5 = qword_1009528C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067F48;
  block[3] = &unk_1008D9990;
  v6 = v4;
  v8 = v6;
  dispatch_sync(v5, block);
  if (([a1 isDataSeparationEnabled] & 1) == 0)
  {
    [REMPaths unitTest_setLegacyApplicationDocumentsURL:v6];
  }
}

@end