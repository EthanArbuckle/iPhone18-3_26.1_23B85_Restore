@interface MSDAnalytics
+ (id)sharedInstance;
- (BOOL)disableCoreAnalticsTransformSampling;
- (BOOL)rollOverCoreAnalyticsLogs;
- (BOOL)uploadCoreAnalyticsLogs;
- (MSDAnalytics)init;
- (void)sendEvent:(id)a3 withPayload:(id)a4;
@end

@implementation MSDAnalytics

+ (id)sharedInstance
{
  if (qword_1001A55E0 != -1)
  {
    sub_1000C6D0C();
  }

  v3 = qword_1001A55D8;

  return v3;
}

- (MSDAnalytics)init
{
  v8.receiver = self;
  v8.super_class = MSDAnalytics;
  v2 = [(MSDAnalytics *)&v8 init];
  if (v2 && os_variant_has_internal_content())
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/demodCALogs.log"];

    if ((v4 & 1) == 0)
    {
      v5 = +[NSFileManager defaultManager];
      [v5 createFileAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/demodCALogs.log" contents:0 attributes:0];
    }

    v6 = [NSFileHandle fileHandleForWritingAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/demodCALogs.log"];
    [(MSDAnalytics *)v2 setTestFileHandle:v6];
  }

  return v2;
}

- (void)sendEvent:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [NSString stringWithFormat:@"Event triggered: %@, Payload: %@\n", v6, v7];
    v10 = [(MSDAnalytics *)v8 testFileHandle];
    [v10 seekToEndOfFile];

    v11 = [(MSDAnalytics *)v8 testFileHandle];
    v12 = [v9 dataUsingEncoding:4];
    [v11 writeData:v12];

    objc_sync_exit(v8);
  }

  if (v6)
  {
    v13 = v7;
    AnalyticsSendEventLazy();
  }
}

- (BOOL)rollOverCoreAnalyticsLogs
{
  v2 = AnalyticsRolloverEvents();
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully rolled over CA logs.", v6, 2u);
    }
  }

  else
  {
    sub_1000C6D20(v3);
  }

  return v2;
}

- (BOOL)uploadCoreAnalyticsLogs
{
  v2 = objc_alloc_init(OSASubmissionClient);
  v3 = [v2 submit];
  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully uploaded outstanding CA logs to server.", v7, 2u);
    }
  }

  else
  {
    sub_1000C6D70(v4);
  }

  return v3;
}

- (BOOL)disableCoreAnalticsTransformSampling
{
  v2 = AnalyticsDisableAllTransformSampling();
  v3 = sub_100063A54();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully disabled sampling for all transforms.", v6, 2u);
    }
  }

  else
  {
    sub_1000C6DC0(v3);
  }

  return v2;
}

@end