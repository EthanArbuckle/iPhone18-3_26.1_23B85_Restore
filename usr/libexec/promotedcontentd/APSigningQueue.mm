@interface APSigningQueue
- (APSigningQueue)init;
- (void)add:(id)add;
- (void)processWithFPDISigningAuthorityPoolManager:(id)manager;
- (void)processWithMescal;
@end

@implementation APSigningQueue

- (APSigningQueue)init
{
  v6.receiver = self;
  v6.super_class = APSigningQueue;
  v2 = [(APSigningQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(APQueue);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)processWithFPDISigningAuthorityPoolManager:(id)manager
{
  managerCopy = manager;
  queue = [(APSigningQueue *)self queue];
  dequeue = [queue dequeue];

  if (dequeue)
  {
    p_info = APPCPolicyData.info;
    selfCopy = self;
    v45 = managerCopy;
    do
    {
      jsonBody = [dequeue jsonBody];
      v48 = 0;
      v9 = [managerCopy signatureForData:jsonBody error:&v48];
      v10 = v48;

      v11 = APLogForCategory();
      v12 = v11;
      v46 = v10;
      v47 = v9;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v52 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Signing: Processing queue with FPDI but signing failed: %{public}@. Fallback to Mescal.", buf, 0xCu);
        }

        request = [dequeue request];
        requestTimestamp = [dequeue requestTimestamp];
        intervalId = [dequeue intervalId];
        jsonBody2 = [dequeue jsonBody];
        startDate = [dequeue startDate];
        deliveryStartDate = [dequeue deliveryStartDate];
        handler = [dequeue handler];
        LOBYTE(v42) = 1;
        [APAttributionServer signPayloadWithMescal:request requestTimestamp:requestTimestamp interval:intervalId jsonBody:jsonBody2 startDate:startDate deliveryStartDate:deliveryStartDate isFallback:v42 completionHandler:handler];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Signing: Signing item using FPDI.", buf, 2u);
        }

        v44 = [v9 base64EncodedStringWithOptions:32];
        requestTimestamp2 = [dequeue requestTimestamp];
        [requestTimestamp2 timeIntervalSinceDate:qword_1004DD9D0];
        v22 = v21;

        v23 = [p_info + 176 findBucketForDaemonRunningTime:v22];
        requestTimestamp = +[NSDate now];
        jsonBody2 = @"NONE";
        request2 = [dequeue request];
        storefront = [request2 storefront];

        if (storefront)
        {
          request3 = [dequeue request];
          storefront2 = [request3 storefront];
          v28 = [p_info + 176 storefrontCountryOnly:storefront2];

          jsonBody2 = v28;
        }

        else
        {
          v29 = APLogForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136642819;
            v52 = "[APSigningQueue processWithFPDISigningAuthorityPoolManager:]";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{sensitive}s, Storefront is nil", buf, 0xCu);
          }

          CreateDiagnosticReport();
        }

        v30 = APPerfLogForCategory();
        intervalId2 = [dequeue intervalId];
        if ((intervalId2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = intervalId2;
          if (os_signpost_enabled(v30))
          {
            intervalId3 = [dequeue intervalId];
            *buf = 134349314;
            v52 = intervalId3;
            v53 = 2114;
            v54 = jsonBody2;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "Payload Signing", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
          }
        }

        v49[0] = @"daemonRunningTime";
        v34 = [NSNumber numberWithInteger:v23];
        v50[0] = v34;
        v50[1] = jsonBody2;
        v49[1] = @"storeFront";
        v49[2] = @"signingType";
        v50[2] = &off_100492130;
        startDate = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];

        startDate2 = [dequeue startDate];
        [p_info + 176 sendTimingAnalytics:@"payloadSigningTime" startDate:startDate2 endDate:requestTimestamp additionalFields:startDate];

        request4 = [dequeue request];
        request = v44;
        [request4 setFpdiSignature:v44];

        deliveryStartDate = [dequeue request];
        handler = [dequeue requestTimestamp];
        deliveryStartDate2 = [dequeue deliveryStartDate];
        intervalId4 = [dequeue intervalId];
        handler2 = [dequeue handler];
        [APAttributionServer _serverPost:deliveryStartDate requestTimestamp:handler payloadDeliveryStartDate:deliveryStartDate2 interval:intervalId4 completionHandler:handler2];

        self = selfCopy;
      }

      managerCopy = v45;

      queue2 = [(APSigningQueue *)self queue];
      dequeue2 = [queue2 dequeue];

      dequeue = dequeue2;
      p_info = (APPCPolicyData + 32);
    }

    while (dequeue2);
  }
}

- (void)processWithMescal
{
  queue = [(APSigningQueue *)self queue];
  dequeue = [queue dequeue];

  if (dequeue)
  {
    do
    {
      v5 = APLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Signing: Signing item using Mescal.", buf, 2u);
      }

      request = [dequeue request];
      requestTimestamp = [dequeue requestTimestamp];
      intervalId = [dequeue intervalId];
      jsonBody = [dequeue jsonBody];
      startDate = [dequeue startDate];
      deliveryStartDate = [dequeue deliveryStartDate];
      handler = [dequeue handler];
      LOBYTE(v15) = 1;
      [APAttributionServer signPayloadWithMescal:request requestTimestamp:requestTimestamp interval:intervalId jsonBody:jsonBody startDate:startDate deliveryStartDate:deliveryStartDate isFallback:v15 completionHandler:handler];

      queue2 = [(APSigningQueue *)self queue];
      dequeue2 = [queue2 dequeue];

      dequeue = dequeue2;
    }

    while (dequeue2);
  }
}

- (void)add:(id)add
{
  addCopy = add;
  queue = [(APSigningQueue *)self queue];
  [queue enqueue:addCopy];
}

@end