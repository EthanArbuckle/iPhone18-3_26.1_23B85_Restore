@interface SecMetrics
+ (id)c2MetricsEndpoint;
+ (id)managerObject;
- (SecMetrics)init;
- (id)generateDeviceInfo;
- (id)getEvent:(id)event;
- (id)gzipEncode:(id)encode;
- (id)requestForGenericEvent:(id)event;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)sendEvent:(id)event pushTopic:(id)topic;
@end

@implementation SecMetrics

- (id)generateDeviceInfo
{
  v2 = objc_alloc_init(SECC2MPDeviceInfo);
  v3 = +[SecC2DeviceInfo productName];
  [(SECC2MPDeviceInfo *)v2 setProductName:v3];

  v4 = +[SecC2DeviceInfo productType];
  [(SECC2MPDeviceInfo *)v2 setProductType:v4];

  v5 = +[SecC2DeviceInfo productVersion];
  [(SECC2MPDeviceInfo *)v2 setProductVersion:v5];

  v6 = +[SecC2DeviceInfo buildVersion];
  [(SECC2MPDeviceInfo *)v2 setProductBuild:v6];

  v7 = +[SecC2DeviceInfo processName];
  [(SECC2MPDeviceInfo *)v2 setProcessName:v7];

  v8 = +[SecC2DeviceInfo processVersion];
  [(SECC2MPDeviceInfo *)v2 setProcessVersion:v8];

  v9 = +[SecC2DeviceInfo processUUID];
  [(SECC2MPDeviceInfo *)v2 setProcessUuid:v9];

  return v2;
}

- (id)gzipEncode:(id)encode
{
  encodeCopy = encode;
  bzero(v10, 0x400uLL);
  v4 = +[NSMutableData data];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9.data_type = 0xAAAAAAAAAAAAAAAALL;
  *&v9.adler = v5;
  *&v9.avail_out = v5;
  *&v9.msg = v5;
  *&v9.next_in = v5;
  *&v9.total_in = v5;
  memset(&v9.zalloc, 0, 24);
  v6 = 0;
  if (!deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v7 = encodeCopy;
    v9.avail_in = [v7 length];
    do
    {
      v9.avail_out = 1024;
      v9.next_out = v10;
      if (deflate(&v9, 4) == -2)
      {
        sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
      }

      [v4 appendBytes:v10 length:1024 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
    }

    deflateEnd(&v9);
    v6 = v4;
  }

  return v6;
}

- (id)requestForGenericEvent:(id)event
{
  eventCopy = event;
  c2MetricsEndpoint = [objc_opt_class() c2MetricsEndpoint];
  if (c2MetricsEndpoint)
  {
    v6 = [[NSMutableURLRequest alloc] initWithURL:c2MetricsEndpoint];
    if (v6)
    {
      v7 = objc_alloc_init(SECC2MPMetric);
      if (v7)
      {
        generateDeviceInfo = [(SecMetrics *)self generateDeviceInfo];
        [(SECC2MPMetric *)v7 setDeviceInfo:generateDeviceInfo];

        [(SECC2MPMetric *)v7 setReportFrequency:0];
        [(SECC2MPMetric *)v7 setReportFrequencyBase:0];
        [(SECC2MPMetric *)v7 setMetricType:201];
        [(SECC2MPMetric *)v7 setGenericEvent:eventCopy];
        v9 = objc_alloc_init(PBDataWriter);
        if (v9)
        {
          [(SECC2MPMetric *)v7 writeTo:v9];
          immutableData = [v9 immutableData];
          if (immutableData)
          {
            v11 = [(SecMetrics *)self gzipEncode:immutableData];
            if (v11)
            {
              [v6 setHTTPMethod:@"POST"];
              [v6 setHTTPBody:v11];
              [v6 setValue:@"application/protobuf" forHTTPHeaderField:@"Content-Type"];
              [v6 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
              v12 = v6;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = [(SecMetrics *)self getEvent:taskCopy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    eventName = [v11 eventName];
    originalRequest = [taskCopy originalRequest];
    v14 = [originalRequest URL];
    if (errorCopy)
    {
      v15 = [errorCopy description];
    }

    else
    {
      v15 = @"success";
    }

    v26 = 138412802;
    v27 = eventName;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "metrics %@ transfer %@ completed with: %@", &v26, 0x20u);
    if (errorCopy)
    {
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskMap = [(SecMetrics *)selfCopy taskMap];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  [taskMap removeObjectForKey:v18];

  lostEvents = [(SecMetrics *)selfCopy lostEvents];
  if (errorCopy || lostEvents)
  {
    v20 = +[NSMutableDictionary dictionary];
    if ([(SecMetrics *)selfCopy lostEvents])
    {
      v21 = [NSNumber numberWithLong:[(SecMetrics *)selfCopy lostEvents]];
      [v20 setObject:v21 forKeyedSubscript:@"counter"];
    }

    if (errorCopy)
    {
      v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [v20 setObject:v22 forKeyedSubscript:@"error_code"];

      domain = [errorCopy domain];
      [v20 setObject:domain forKeyedSubscript:@"error_domain"];
    }

    [SecCoreAnalytics sendEvent:@"com.apple.security.push.channel.dropped" event:v20];
    [(SecMetrics *)selfCopy setLostEvents:0];
  }

  taskMap2 = [(SecMetrics *)selfCopy taskMap];
  v25 = [taskMap2 count] == 0;

  if (v25)
  {
    [(SecMetrics *)selfCopy setTransaction:0];
  }

  objc_sync_exit(selfCopy);
}

- (id)getEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskMap = [(SecMetrics *)selfCopy taskMap];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy taskIdentifier]);
  v8 = [taskMap objectForKeyedSubscript:v7];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)sendEvent:(id)event pushTopic:(id)topic
{
  eventCopy = event;
  topicCopy = topic;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskMap = [(SecMetrics *)selfCopy taskMap];
  v10 = [taskMap count];

  if (v10 < 6)
  {
    objc_sync_exit(selfCopy);

    genericEvent = [eventCopy genericEvent];
    if (genericEvent)
    {
      v13 = [(SecMetrics *)selfCopy requestForGenericEvent:genericEvent];
      if (v13)
      {
        uRLSession = [(SecMetrics *)selfCopy URLSession];
        v15 = [uRLSession dataTaskWithRequest:v13];

        if (topicCopy)
        {
          [v15 set_APSRelayTopic:topicCopy];
        }

        v16 = selfCopy;
        objc_sync_enter(v16);
        taskMap2 = [(SecMetrics *)v16 taskMap];
        v18 = [taskMap2 count];

        if (!v18)
        {
          v19 = os_transaction_create();
          [(SecMetrics *)v16 setTransaction:v19];
        }

        taskMap3 = [(SecMetrics *)v16 taskMap];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 taskIdentifier]);
        [taskMap3 setObject:eventCopy forKeyedSubscript:v21];

        objc_sync_exit(v16);
        [v15 resume];
      }
    }
  }

  else
  {
    [(SecMetrics *)selfCopy setLostEvents:[(SecMetrics *)selfCopy lostEvents]+ 1];
    objc_sync_exit(selfCopy);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      eventName = [eventCopy eventName];
      v22 = 138412290;
      v23 = eventName;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "metrics %@ dropped on floor since too many are pending", &v22, 0xCu);
    }
  }
}

- (SecMetrics)init
{
  v8.receiver = self;
  v8.super_class = SecMetrics;
  v2 = [(SecMetrics *)&v8 init];
  if (v2)
  {
    v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v4 = [NSURLSession sessionWithConfiguration:v3 delegate:v2 delegateQueue:0];
    [(SecMetrics *)v2 setURLSession:v4];

    v5 = +[NSMutableDictionary dictionary];
    [(SecMetrics *)v2 setTaskMap:v5];

    v6 = v2;
  }

  return v2;
}

+ (id)managerObject
{
  if (qword_10039E1B8 != -1)
  {
    dispatch_once(&qword_10039E1B8, &stru_1003434A0);
  }

  v3 = qword_10039E1B0;

  return v3;
}

+ (id)c2MetricsEndpoint
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    v5 = [aa_primaryAppleAccount propertiesForDataclass:ACAccountDataclassCKMetricsService];
    v6 = [v5 objectForKeyedSubscript:@"url"];

    if (v6)
    {
      v7 = [[NSURL alloc] initWithString:v6];
      v8 = [v7 URLByAppendingPathComponent:@"c2"];

      if (v8)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018F00C;
        block[3] = &unk_100346018;
        v8 = v8;
        v11 = v8;
        if (qword_10039E1A8 != -1)
        {
          dispatch_once(&qword_10039E1A8, block);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end