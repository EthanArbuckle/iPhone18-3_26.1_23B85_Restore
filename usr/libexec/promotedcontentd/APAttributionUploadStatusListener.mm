@interface APAttributionUploadStatusListener
- (APAttributionUploadStatusListener)initWithIntervalId:(unint64_t)id reportingStorefront:(id)storefront requestTimestamp:(id)timestamp daemonStartTime:(id)time tokenPayloadDeliveryStartTime:(id)startTime tokenReturnedToClientDate:(id)date;
- (void)receivedResponse:(id)response retryCount:(unint64_t)count;
- (void)requestBuildingStartedWithTimestamp:(unint64_t)timestamp;
- (void)requestIsAboutToBeSent;
- (void)uploadFailedWithStatusCode:(int64_t)code retryCount:(unint64_t)count;
- (void)uploadSucceededWithRetryCount:(unint64_t)count;
@end

@implementation APAttributionUploadStatusListener

- (APAttributionUploadStatusListener)initWithIntervalId:(unint64_t)id reportingStorefront:(id)storefront requestTimestamp:(id)timestamp daemonStartTime:(id)time tokenPayloadDeliveryStartTime:(id)startTime tokenReturnedToClientDate:(id)date
{
  storefrontCopy = storefront;
  timestampCopy = timestamp;
  timeCopy = time;
  startTimeCopy = startTime;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = APAttributionUploadStatusListener;
  v18 = [(APAttributionUploadStatusListener *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_intervalId = id;
    objc_storeStrong(&v18->_reportingStorefront, storefront);
    objc_storeStrong(&v19->_requestTimestamp, timestamp);
    objc_storeStrong(&v19->_daemonStartTime, time);
    objc_storeStrong(&v19->_tokenPayloadDeliveryStartTime, startTime);
    objc_storeStrong(&v19->_tokenReturnedToClientDate, date);
  }

  return v19;
}

- (void)uploadSucceededWithRetryCount:(unint64_t)count
{
  v5 = APPerfLogForCategory();
  intervalId = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = intervalId;
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      intervalId2 = [(APAttributionUploadStatusListener *)self intervalId];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "HTTP Request Success", "HTTP Request Success id=%llu enableTelemetry=YES ", buf, 0xCu);
    }
  }

  v8 = +[NSDate now];
  requestTimestamp = [(APAttributionUploadStatusListener *)self requestTimestamp];
  v37 = @"storeFront";
  reportingStorefront = [(APAttributionUploadStatusListener *)self reportingStorefront];
  v38 = reportingStorefront;
  v11 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [APAttributionAnalytics sendTimingAnalytics:@"tokenServerDeliveryTime" startDate:requestTimestamp endDate:v8 additionalFields:v11];

  requestTimestamp2 = [(APAttributionUploadStatusListener *)self requestTimestamp];
  daemonStartTime = [(APAttributionUploadStatusListener *)self daemonStartTime];
  [requestTimestamp2 timeIntervalSinceDate:daemonStartTime];
  v15 = v14;

  v16 = [APAttributionAnalytics findBucketForDaemonRunningTime:v15];
  v35[0] = @"numberOfRetries";
  v17 = [NSNumber numberWithUnsignedInteger:count];
  v36[0] = v17;
  v35[1] = @"daemonRunningTime";
  v18 = [NSNumber numberWithInteger:v16];
  v36[1] = v18;
  v35[2] = @"storeFront";
  reportingStorefront2 = [(APAttributionUploadStatusListener *)self reportingStorefront];
  v36[2] = reportingStorefront2;
  v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

  tokenReturnedToClientDate = [(APAttributionUploadStatusListener *)self tokenReturnedToClientDate];
  [APAttributionAnalytics sendTimingAnalytics:@"clientDeliveryToServerTime" startDate:tokenReturnedToClientDate endDate:v8 additionalFields:v20];

  if (!count)
  {
    tokenPayloadDeliveryStartTime = [(APAttributionUploadStatusListener *)self tokenPayloadDeliveryStartTime];
    v23 = +[NSDate date];
    v33 = @"storeFront";
    reportingStorefront3 = [(APAttributionUploadStatusListener *)self reportingStorefront];
    v34 = reportingStorefront3;
    v25 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [APAttributionAnalytics sendTimedAnalytic:@"attribution.timingPayloadFlow" fieldName:@"payloadFlowTime" startDate:tokenPayloadDeliveryStartTime endDate:v23 additionalFields:v25];

    tokenReturnedToClientDate2 = [(APAttributionUploadStatusListener *)self tokenReturnedToClientDate];
    v27 = +[NSDate date];
    reportingStorefront4 = [(APAttributionUploadStatusListener *)self reportingStorefront];
    v32[0] = reportingStorefront4;
    v31[1] = @"Retry";
    v29 = [NSNumber numberWithUnsignedInteger:0];
    v31[2] = @"Code";
    v32[1] = v29;
    v32[2] = &off_100492148;
    v30 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
    [APAttributionAnalytics sendTimedAnalytic:@"attribution.timingDelivery" fieldName:@"payloadDeliveryTime" startDate:tokenReturnedToClientDate2 endDate:v27 additionalFields:v30];
  }
}

- (void)uploadFailedWithStatusCode:(int64_t)code retryCount:(unint64_t)count
{
  v6 = APPerfLogForCategory();
  intervalId = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = intervalId;
    if (os_signpost_enabled(v6))
    {
      v9 = 134349312;
      intervalId2 = [(APAttributionUploadStatusListener *)self intervalId];
      v11 = 2048;
      codeCopy = code;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "HTTP Response Error", "HTTP Response Error id=%{public, name=id}lld error=%ld enableTelemetry=YES ", &v9, 0x16u);
    }
  }
}

- (void)requestBuildingStartedWithTimestamp:(unint64_t)timestamp
{
  v5 = APPerfLogForCategory();
  intervalId = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = intervalId;
    if (os_signpost_enabled(v5))
    {
      intervalId2 = [(APAttributionUploadStatusListener *)self intervalId];
      reportingStorefront = [(APAttributionUploadStatusListener *)self reportingStorefront];
      v10 = 134349570;
      timestampCopy = timestamp;
      v12 = 2050;
      v13 = intervalId2;
      v14 = 2114;
      v15 = reportingStorefront;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HTTP Request Time", "%{public, signpost.description:begin_time}llu id=%{public, name=id}lld storefront=%{public, name=storefront}@", &v10, 0x20u);
    }
  }
}

- (void)requestIsAboutToBeSent
{
  v3 = APPerfLogForCategory();
  intervalId = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = intervalId;
    if (os_signpost_enabled(v3))
    {
      v11 = 134349056;
      intervalId2 = [(APAttributionUploadStatusListener *)self intervalId];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v5, "HTTP Request Time", "id=%{public, name=id}lld enableTelemetry=YES ", &v11, 0xCu);
    }
  }

  v6 = APPerfLogForCategory();
  intervalId3 = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = intervalId3;
    if (os_signpost_enabled(v6))
    {
      intervalId4 = [(APAttributionUploadStatusListener *)self intervalId];
      reportingStorefront = [(APAttributionUploadStatusListener *)self reportingStorefront];
      v11 = 134349314;
      intervalId2 = intervalId4;
      v13 = 2114;
      v14 = reportingStorefront;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HTTP Response Time", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", &v11, 0x16u);
    }
  }
}

- (void)receivedResponse:(id)response retryCount:(unint64_t)count
{
  responseCopy = response;
  v7 = APPerfLogForCategory();
  intervalId = [(APAttributionUploadStatusListener *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = intervalId;
    if (os_signpost_enabled(v7))
    {
      *buf = 134349312;
      intervalId2 = [(APAttributionUploadStatusListener *)self intervalId];
      v22 = 2050;
      countCopy = count;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "HTTP Response Time", "id=%{public, name=id}lld retryCount=%{public, name=retryCount}ld enableTelemetry=YES ", buf, 0x16u);
    }
  }

  responseError = [responseCopy responseError];

  if (responseError)
  {
    responseError2 = [responseCopy responseError];
    v12 = +[APA9nErrorBucketObjC findBucketForCode:type:](APA9nErrorBucketObjC, "findBucketForCode:type:", [responseError2 code], 1);
  }

  else
  {
    v12 = +[APA9nErrorBucketObjC findBucketForCode:type:](APA9nErrorBucketObjC, "findBucketForCode:type:", [responseCopy responseStatusCode], 0);
  }

  v13 = [NSNumber numberWithInteger:v12, @"Code"];
  v19[0] = v13;
  v19[1] = &off_100492160;
  v18[1] = @"Module";
  v18[2] = @"Retry";
  v14 = [NSNumber numberWithUnsignedInteger:count];
  v19[2] = v14;
  v18[3] = @"Status";
  if ([responseCopy responseStatusCode] == 204)
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