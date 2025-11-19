@interface APAttributionUploadStatusListener
- (APAttributionUploadStatusListener)initWithIntervalId:(unint64_t)a3 reportingStorefront:(id)a4 requestTimestamp:(id)a5 daemonStartTime:(id)a6 tokenPayloadDeliveryStartTime:(id)a7 tokenReturnedToClientDate:(id)a8;
- (void)receivedResponse:(id)a3 retryCount:(unint64_t)a4;
- (void)requestBuildingStartedWithTimestamp:(unint64_t)a3;
- (void)requestIsAboutToBeSent;
- (void)uploadFailedWithStatusCode:(int64_t)a3 retryCount:(unint64_t)a4;
- (void)uploadSucceededWithRetryCount:(unint64_t)a3;
@end

@implementation APAttributionUploadStatusListener

- (APAttributionUploadStatusListener)initWithIntervalId:(unint64_t)a3 reportingStorefront:(id)a4 requestTimestamp:(id)a5 daemonStartTime:(id)a6 tokenPayloadDeliveryStartTime:(id)a7 tokenReturnedToClientDate:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = APAttributionUploadStatusListener;
  v18 = [(APAttributionUploadStatusListener *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_intervalId = a3;
    objc_storeStrong(&v18->_reportingStorefront, a4);
    objc_storeStrong(&v19->_requestTimestamp, a5);
    objc_storeStrong(&v19->_daemonStartTime, a6);
    objc_storeStrong(&v19->_tokenPayloadDeliveryStartTime, a7);
    objc_storeStrong(&v19->_tokenReturnedToClientDate, a8);
  }

  return v19;
}

- (void)uploadSucceededWithRetryCount:(unint64_t)a3
{
  v5 = APPerfLogForCategory();
  v6 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      v40 = [(APAttributionUploadStatusListener *)self intervalId];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "HTTP Request Success", "HTTP Request Success id=%llu enableTelemetry=YES ", buf, 0xCu);
    }
  }

  v8 = +[NSDate now];
  v9 = [(APAttributionUploadStatusListener *)self requestTimestamp];
  v37 = @"storeFront";
  v10 = [(APAttributionUploadStatusListener *)self reportingStorefront];
  v38 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [APAttributionAnalytics sendTimingAnalytics:@"tokenServerDeliveryTime" startDate:v9 endDate:v8 additionalFields:v11];

  v12 = [(APAttributionUploadStatusListener *)self requestTimestamp];
  v13 = [(APAttributionUploadStatusListener *)self daemonStartTime];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  v16 = [APAttributionAnalytics findBucketForDaemonRunningTime:v15];
  v35[0] = @"numberOfRetries";
  v17 = [NSNumber numberWithUnsignedInteger:a3];
  v36[0] = v17;
  v35[1] = @"daemonRunningTime";
  v18 = [NSNumber numberWithInteger:v16];
  v36[1] = v18;
  v35[2] = @"storeFront";
  v19 = [(APAttributionUploadStatusListener *)self reportingStorefront];
  v36[2] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

  v21 = [(APAttributionUploadStatusListener *)self tokenReturnedToClientDate];
  [APAttributionAnalytics sendTimingAnalytics:@"clientDeliveryToServerTime" startDate:v21 endDate:v8 additionalFields:v20];

  if (!a3)
  {
    v22 = [(APAttributionUploadStatusListener *)self tokenPayloadDeliveryStartTime];
    v23 = +[NSDate date];
    v33 = @"storeFront";
    v24 = [(APAttributionUploadStatusListener *)self reportingStorefront];
    v34 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [APAttributionAnalytics sendTimedAnalytic:@"attribution.timingPayloadFlow" fieldName:@"payloadFlowTime" startDate:v22 endDate:v23 additionalFields:v25];

    v26 = [(APAttributionUploadStatusListener *)self tokenReturnedToClientDate];
    v27 = +[NSDate date];
    v28 = [(APAttributionUploadStatusListener *)self reportingStorefront];
    v32[0] = v28;
    v31[1] = @"Retry";
    v29 = [NSNumber numberWithUnsignedInteger:0];
    v31[2] = @"Code";
    v32[1] = v29;
    v32[2] = &off_100492148;
    v30 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
    [APAttributionAnalytics sendTimedAnalytic:@"attribution.timingDelivery" fieldName:@"payloadDeliveryTime" startDate:v26 endDate:v27 additionalFields:v30];
  }
}

- (void)uploadFailedWithStatusCode:(int64_t)a3 retryCount:(unint64_t)a4
{
  v6 = APPerfLogForCategory();
  v7 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v9 = 134349312;
      v10 = [(APAttributionUploadStatusListener *)self intervalId];
      v11 = 2048;
      v12 = a3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "HTTP Response Error", "HTTP Response Error id=%{public, name=id}lld error=%ld enableTelemetry=YES ", &v9, 0x16u);
    }
  }
}

- (void)requestBuildingStartedWithTimestamp:(unint64_t)a3
{
  v5 = APPerfLogForCategory();
  v6 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v8 = [(APAttributionUploadStatusListener *)self intervalId];
      v9 = [(APAttributionUploadStatusListener *)self reportingStorefront];
      v10 = 134349570;
      v11 = a3;
      v12 = 2050;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HTTP Request Time", "%{public, signpost.description:begin_time}llu id=%{public, name=id}lld storefront=%{public, name=storefront}@", &v10, 0x20u);
    }
  }
}

- (void)requestIsAboutToBeSent
{
  v3 = APPerfLogForCategory();
  v4 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v11 = 134349056;
      v12 = [(APAttributionUploadStatusListener *)self intervalId];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v5, "HTTP Request Time", "id=%{public, name=id}lld enableTelemetry=YES ", &v11, 0xCu);
    }
  }

  v6 = APPerfLogForCategory();
  v7 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v9 = [(APAttributionUploadStatusListener *)self intervalId];
      v10 = [(APAttributionUploadStatusListener *)self reportingStorefront];
      v11 = 134349314;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HTTP Response Time", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", &v11, 0x16u);
    }
  }
}

- (void)receivedResponse:(id)a3 retryCount:(unint64_t)a4
{
  v6 = a3;
  v7 = APPerfLogForCategory();
  v8 = [(APAttributionUploadStatusListener *)self intervalId];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 134349312;
      v21 = [(APAttributionUploadStatusListener *)self intervalId];
      v22 = 2050;
      v23 = a4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "HTTP Response Time", "id=%{public, name=id}lld retryCount=%{public, name=retryCount}ld enableTelemetry=YES ", buf, 0x16u);
    }
  }

  v10 = [v6 responseError];

  if (v10)
  {
    v11 = [v6 responseError];
    v12 = +[APA9nErrorBucketObjC findBucketForCode:type:](APA9nErrorBucketObjC, "findBucketForCode:type:", [v11 code], 1);
  }

  else
  {
    v12 = +[APA9nErrorBucketObjC findBucketForCode:type:](APA9nErrorBucketObjC, "findBucketForCode:type:", [v6 responseStatusCode], 0);
  }

  v13 = [NSNumber numberWithInteger:v12, @"Code"];
  v19[0] = v13;
  v19[1] = &off_100492160;
  v18[1] = @"Module";
  v18[2] = @"Retry";
  v14 = [NSNumber numberWithUnsignedInteger:a4];
  v19[2] = v14;
  v18[3] = @"Status";
  if ([v6 responseStatusCode] == 204)
  {
    v15 = 0;
  }

  else
  {
    v15 = 6;
  }

  v16 = [NSNumber numberWithInteger:v15];
  v19[3] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  [APAnalytics sendEvent:@"attribution.retry" customPayload:v17];
}

@end