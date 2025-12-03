@interface RDPaths
+ (BOOL)isDataSeparationEnabled;
+ (NSURL)defaultApplicationDocumentsURL;
+ (NSURL)locationBundleURL;
+ (id)defaultReminderDataContainerURL;
+ (id)urlForIsolatedContainerWithIdentifier:(id)identifier;
+ (void)unitTest_setDefaultApplicationDocumentsURL:(id)l;
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
  if ([self isDataSeparationEnabled])
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
  defaultApplicationDocumentsURL = [self defaultApplicationDocumentsURL];
  rem_URLByAppendingReminderDataContainerPathComponent = [defaultApplicationDocumentsURL rem_URLByAppendingReminderDataContainerPathComponent];

  return rem_URLByAppendingReminderDataContainerPathComponent;
}

+ (BOOL)isDataSeparationEnabled
{
  v2 = [RDFeatureFlagsObjCWrapper wrappedFeatureFlagsWithRawValue:@"dataSeparation"];
  isEnabled = [v2 isEnabled];

  return isEnabled;
}

+ (id)urlForIsolatedContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultApplicationDocumentsURL = [self defaultApplicationDocumentsURL];
  v6 = [defaultApplicationDocumentsURL URLByAppendingPathComponent:@"IsolatedContainers/" isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v7;
}

+ (void)unitTest_setDefaultApplicationDocumentsURL:(id)l
{
  lCopy = l;
  if (qword_1009528D8 != -1)
  {
    sub_10075FC5C();
  }

  v5 = qword_1009528C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067F48;
  block[3] = &unk_1008D9990;
  v6 = lCopy;
  v8 = v6;
  dispatch_sync(v5, block);
  if (([self isDataSeparationEnabled] & 1) == 0)
  {
    [REMPaths unitTest_setLegacyApplicationDocumentsURL:v6];
  }
}

@end