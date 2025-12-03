@interface MSDAnalytics
+ (id)sharedInstance;
- (BOOL)disableCoreAnalticsTransformSampling;
- (BOOL)rollOverCoreAnalyticsLogs;
- (BOOL)uploadCoreAnalyticsLogs;
- (MSDAnalytics)init;
- (void)sendEvent:(id)event withPayload:(id)payload;
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

- (void)sendEvent:(id)event withPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  if (os_variant_has_internal_content())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    payloadCopy = [NSString stringWithFormat:@"Event triggered: %@, Payload: %@\n", eventCopy, payloadCopy];
    testFileHandle = [(MSDAnalytics *)selfCopy testFileHandle];
    [testFileHandle seekToEndOfFile];

    testFileHandle2 = [(MSDAnalytics *)selfCopy testFileHandle];
    v12 = [payloadCopy dataUsingEncoding:4];
    [testFileHandle2 writeData:v12];

    objc_sync_exit(selfCopy);
  }

  if (eventCopy)
  {
    v13 = payloadCopy;
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
  submit = [v2 submit];
  v4 = sub_100063A54();
  v5 = v4;
  if (submit)
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

  return submit;
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