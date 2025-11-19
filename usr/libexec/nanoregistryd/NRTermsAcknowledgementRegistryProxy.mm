@interface NRTermsAcknowledgementRegistryProxy
+ (id)entitlements;
+ (id)serverExportedInterface;
- (void)add:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5;
- (void)checkForAcknowledgement:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5;
- (void)logCaller:(SEL)a3 args:(id)a4;
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

- (void)add:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [NSString stringWithFormat:@"NRTermsAcknowlegementRegistryProxy: add:(%@) forDeviceID:(%@)", v9, v10];
  [(NRTermsAcknowledgementRegistryProxy *)self logCaller:a2 args:v12];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000A7298;
  v21[4] = sub_1000A72A8;
  v22 = [NROSTransaction transactionWithName:@"addTerms"];
  [v9 setWritable:1];
  v13 = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
  v14 = [v13 lastPathComponent];
  [v9 _setLoggingProcessName:v14];

  v15 = +[NRQueue registryDaemonQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A72B0;
  v16[3] = &unk_100178918;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v21;
  [v15 dispatchAsync:v16];

  _Block_object_dispose(v21, 8);
}

- (void)checkForAcknowledgement:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [NSString stringWithFormat:@"NRTermsAcknowlegementRegistryProxy: checkForAcknowledgement:(%@) forDeviceID:(%@)", v9, v10];
  [(NRTermsAcknowledgementRegistryProxy *)self logCaller:a2 args:v12];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000A7298;
  v21[4] = sub_1000A72A8;
  v22 = [NROSTransaction transactionWithName:@"checkTerms"];
  [v9 setWritable:1];
  v13 = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
  v14 = [v13 lastPathComponent];
  [v9 _setLoggingProcessName:v14];

  v15 = +[NRQueue registryDaemonQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A77CC;
  v16[3] = &unk_100178918;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v21;
  [v15 dispatchAsync:v16];

  _Block_object_dispose(v21, 8);
}

- (void)logCaller:(SEL)a3 args:(id)a4
{
  v6 = a4;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NRTermsAcknowledgementRegistryProxy *)self appPath];
      v11 = NSStringFromSelector(a3);
      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ called %{public}@ %{public}@", &v12, 0x20u);
    }
  }
}

@end