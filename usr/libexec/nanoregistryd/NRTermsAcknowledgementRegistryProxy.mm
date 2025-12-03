@interface NRTermsAcknowledgementRegistryProxy
+ (id)entitlements;
+ (id)serverExportedInterface;
- (void)add:(id)add forDeviceID:(id)d withCompletion:(id)completion;
- (void)checkForAcknowledgement:(id)acknowledgement forDeviceID:(id)d withCompletion:(id)completion;
- (void)logCaller:(SEL)caller args:(id)args;
@end

@implementation NRTermsAcknowledgementRegistryProxy

+ (id)serverExportedInterface
{
  if (qword_1001B3990 != -1)
  {
    sub_100102688();
  }

  v3 = qword_1001B3988;

  return v3;
}

+ (id)entitlements
{
  v5 = @"com.apple.nanoregistry.termsacknowledgementregistry";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)add:(id)add forDeviceID:(id)d withCompletion:(id)completion
{
  addCopy = add;
  dCopy = d;
  completionCopy = completion;
  dCopy = [NSString stringWithFormat:@"NRTermsAcknowlegementRegistryProxy: add:(%@) forDeviceID:(%@)", addCopy, dCopy];
  [(NRTermsAcknowledgementRegistryProxy *)self logCaller:a2 args:dCopy];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000A7298;
  v21[4] = sub_1000A72A8;
  v22 = [NROSTransaction transactionWithName:@"addTerms"];
  [addCopy setWritable:1];
  appPath = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
  lastPathComponent = [appPath lastPathComponent];
  [addCopy _setLoggingProcessName:lastPathComponent];

  v15 = +[NRQueue registryDaemonQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A72B0;
  v16[3] = &unk_100178918;
  v16[4] = self;
  v17 = addCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = v21;
  [v15 dispatchAsync:v16];

  _Block_object_dispose(v21, 8);
}

- (void)checkForAcknowledgement:(id)acknowledgement forDeviceID:(id)d withCompletion:(id)completion
{
  acknowledgementCopy = acknowledgement;
  dCopy = d;
  completionCopy = completion;
  dCopy = [NSString stringWithFormat:@"NRTermsAcknowlegementRegistryProxy: checkForAcknowledgement:(%@) forDeviceID:(%@)", acknowledgementCopy, dCopy];
  [(NRTermsAcknowledgementRegistryProxy *)self logCaller:a2 args:dCopy];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000A7298;
  v21[4] = sub_1000A72A8;
  v22 = [NROSTransaction transactionWithName:@"checkTerms"];
  [acknowledgementCopy setWritable:1];
  appPath = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
  lastPathComponent = [appPath lastPathComponent];
  [acknowledgementCopy _setLoggingProcessName:lastPathComponent];

  v15 = +[NRQueue registryDaemonQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A77CC;
  v16[3] = &unk_100178918;
  v16[4] = self;
  v17 = acknowledgementCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = v21;
  [v15 dispatchAsync:v16];

  _Block_object_dispose(v21, 8);
}

- (void)logCaller:(SEL)caller args:(id)args
{
  argsCopy = args;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      appPath = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
      v11 = NSStringFromSelector(caller);
      v12 = 138543874;
      v13 = appPath;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = argsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ called %{public}@ %{public}@", &v12, 0x20u);
    }
  }
}

@end