@interface APSigningQueue
- (APSigningQueue)init;
- (void)add:(id)a3;
- (void)processWithFPDISigningAuthorityPoolManager:(id)a3;
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

- (void)processWithFPDISigningAuthorityPoolManager:(id)a3
{
  v4 = a3;
  v5 = [(APSigningQueue *)self queue];
  v6 = [v5 dequeue];

  if (v6)
  {
    p_info = APPCPolicyData.info;
    v43 = self;
    v45 = v4;
    do
    {
      v8 = [v6 jsonBody];
      v48 = 0;
      v9 = [v4 signatureForData:v8 error:&v48];
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

        v13 = [v6 request];
        v14 = [v6 requestTimestamp];
        v15 = [v6 intervalId];
        v16 = [v6 jsonBody];
        v17 = [v6 startDate];
        v18 = [v6 deliveryStartDate];
        v19 = [v6 handler];
        LOBYTE(v42) = 1;
        [APAttributionServer signPayloadWithMescal:v13 requestTimestamp:v14 interval:v15 jsonBody:v16 startDate:v17 deliveryStartDate:v18 isFallback:v42 completionHandler:v19];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Signing: Signing item using FPDI.", buf, 2u);
        }

        v44 = [v9 base64EncodedStringWithOptions:32];
        v20 = [v6 requestTimestamp];
        [v20 timeIntervalSinceDate:qword_1004DD9D0];
        v22 = v21;

        v23 = [p_info + 176 findBucketForDaemonRunningTime:v22];
        v14 = +[NSDate now];
        v16 = @"NONE";
        v24 = [v6 request];
        v25 = [v24 storefront];

        if (v25)
        {
          v26 = [v6 request];
          v27 = [v26 storefront];
          v28 = [p_info + 176 storefrontCountryOnly:v27];

          v16 = v28;
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
        v31 = [v6 intervalId];
        if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = v31;
          if (os_signpost_enabled(v30))
          {
            v33 = [v6 intervalId];
            *buf = 134349314;
            v52 = v33;
            v53 = 2114;
            v54 = v16;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "Payload Signing", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
          }
        }

        v49[0] = @"daemonRunningTime";
        v34 = [NSNumber numberWithInteger:v23];
        v50[0] = v34;
        v50[1] = v16;
        v49[1] = @"storeFront";
        v49[2] = @"signingType";
        v50[2] = &off_100492130;
        v17 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];

        v35 = [v6 startDate];
        [p_info + 176 sendTimingAnalytics:@"payloadSigningTime" startDate:v35 endDate:v14 additionalFields:v17];

        v36 = [v6 request];
        v13 = v44;
        [v36 setFpdiSignature:v44];

        v18 = [v6 request];
        v19 = [v6 requestTimestamp];
        v37 = [v6 deliveryStartDate];
        v38 = [v6 intervalId];
        v39 = [v6 handler];
        [APAttributionServer _serverPost:v18 requestTimestamp:v19 payloadDeliveryStartDate:v37 interval:v38 completionHandler:v39];

        self = v43;
      }

      v4 = v45;

      v40 = [(APSigningQueue *)self queue];
      v41 = [v40 dequeue];

      v6 = v41;
      p_info = (APPCPolicyData + 32);
    }

    while (v41);
  }
}

- (void)processWithMescal
{
  v3 = [(APSigningQueue *)self queue];
  v4 = [v3 dequeue];

  if (v4)
  {
    do
    {
      v5 = APLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Signing: Signing item using Mescal.", buf, 2u);
      }

      v6 = [v4 request];
      v7 = [v4 requestTimestamp];
      v8 = [v4 intervalId];
      v9 = [v4 jsonBody];
      v10 = [v4 startDate];
      v11 = [v4 deliveryStartDate];
      v12 = [v4 handler];
      LOBYTE(v15) = 1;
      [APAttributionServer signPayloadWithMescal:v6 requestTimestamp:v7 interval:v8 jsonBody:v9 startDate:v10 deliveryStartDate:v11 isFallback:v15 completionHandler:v12];

      v13 = [(APSigningQueue *)self queue];
      v14 = [v13 dequeue];

      v4 = v14;
    }

    while (v14);
  }
}

- (void)add:(id)a3
{
  v4 = a3;
  v5 = [(APSigningQueue *)self queue];
  [v5 enqueue:v4];
}

@end