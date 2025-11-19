@interface SecMetrics
+ (id)c2MetricsEndpoint;
+ (id)managerObject;
- (SecMetrics)init;
- (id)generateDeviceInfo;
- (id)getEvent:(id)a3;
- (id)gzipEncode:(id)a3;
- (id)requestForGenericEvent:(id)a3;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)sendEvent:(id)a3 pushTopic:(id)a4;
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

- (id)gzipEncode:(id)a3
{
  v3 = a3;
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
    v7 = v3;
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

- (id)requestForGenericEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() c2MetricsEndpoint];
  if (v5)
  {
    v6 = [[NSMutableURLRequest alloc] initWithURL:v5];
    if (v6)
    {
      v7 = objc_alloc_init(SECC2MPMetric);
      if (v7)
      {
        v8 = [(SecMetrics *)self generateDeviceInfo];
        [(SECC2MPMetric *)v7 setDeviceInfo:v8];

        [(SECC2MPMetric *)v7 setReportFrequency:0];
        [(SECC2MPMetric *)v7 setReportFrequencyBase:0];
        [(SECC2MPMetric *)v7 setMetricType:201];
        [(SECC2MPMetric *)v7 setGenericEvent:v4];
        v9 = objc_alloc_init(PBDataWriter);
        if (v9)
        {
          [(SECC2MPMetric *)v7 writeTo:v9];
          v10 = [v9 immutableData];
          if (v10)
          {
            v11 = [(SecMetrics *)self gzipEncode:v10];
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SecMetrics *)self getEvent:v9];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v11 eventName];
    v13 = [v9 originalRequest];
    v14 = [v13 URL];
    if (v10)
    {
      v15 = [v10 description];
    }

    else
    {
      v15 = @"success";
    }

    v26 = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "metrics %@ transfer %@ completed with: %@", &v26, 0x20u);
    if (v10)
    {
    }
  }

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(SecMetrics *)v16 taskMap];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 taskIdentifier]);
  [v17 removeObjectForKey:v18];

  v19 = [(SecMetrics *)v16 lostEvents];
  if (v10 || v19)
  {
    v20 = +[NSMutableDictionary dictionary];
    if ([(SecMetrics *)v16 lostEvents])
    {
      v21 = [NSNumber numberWithLong:[(SecMetrics *)v16 lostEvents]];
      [v20 setObject:v21 forKeyedSubscript:@"counter"];
    }

    if (v10)
    {
      v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
      [v20 setObject:v22 forKeyedSubscript:@"error_code"];

      v23 = [v10 domain];
      [v20 setObject:v23 forKeyedSubscript:@"error_domain"];
    }

    [SecCoreAnalytics sendEvent:@"com.apple.security.push.channel.dropped" event:v20];
    [(SecMetrics *)v16 setLostEvents:0];
  }

  v24 = [(SecMetrics *)v16 taskMap];
  v25 = [v24 count] == 0;

  if (v25)
  {
    [(SecMetrics *)v16 setTransaction:0];
  }

  objc_sync_exit(v16);
}

- (id)getEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SecMetrics *)v5 taskMap];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 taskIdentifier]);
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)sendEvent:(id)a3 pushTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(SecMetrics *)v8 taskMap];
  v10 = [v9 count];

  if (v10 < 6)
  {
    objc_sync_exit(v8);

    v12 = [v6 genericEvent];
    if (v12)
    {
      v13 = [(SecMetrics *)v8 requestForGenericEvent:v12];
      if (v13)
      {
        v14 = [(SecMetrics *)v8 URLSession];
        v15 = [v14 dataTaskWithRequest:v13];

        if (v7)
        {
          [v15 set_APSRelayTopic:v7];
        }

        v16 = v8;
        objc_sync_enter(v16);
        v17 = [(SecMetrics *)v16 taskMap];
        v18 = [v17 count];

        if (!v18)
        {
          v19 = os_transaction_create();
          [(SecMetrics *)v16 setTransaction:v19];
        }

        v20 = [(SecMetrics *)v16 taskMap];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 taskIdentifier]);
        [v20 setObject:v6 forKeyedSubscript:v21];

        objc_sync_exit(v16);
        [v15 resume];
      }
    }
  }

  else
  {
    [(SecMetrics *)v8 setLostEvents:[(SecMetrics *)v8 lostEvents]+ 1];
    objc_sync_exit(v8);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 eventName];
      v22 = 138412290;
      v23 = v11;
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
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 propertiesForDataclass:ACAccountDataclassCKMetricsService];
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