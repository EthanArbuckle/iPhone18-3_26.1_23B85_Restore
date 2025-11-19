@interface APAttributionAnalytics
+ (id)_buildPayloadForTimingAnalytics:(id)a3 startDate:(id)a4 endDate:(id)a5 additionalFields:(id)a6;
+ (id)storefrontCountryOnly:(id)a3;
+ (int64_t)findBucketForDaemonRunningTime:(double)a3;
+ (void)sendTimedAnalytic:(id)a3 fieldName:(id)a4 startDate:(id)a5 endDate:(id)a6 additionalFields:(id)a7;
+ (void)sendTimingAnalytics:(id)a3 startDate:(id)a4 endDate:(id)a5 additionalFields:(id)a6;
+ (void)sendTokenDuplicateAnalytics:(id)a3;
- (APAttributionAnalytics)init;
- (unint64_t)end;
- (unint64_t)serverPostEnd;
- (void)sendAnalytics;
- (void)sendTokenAnalytics;
- (void)setEnd:(unint64_t)a3;
- (void)setServerPostEnd:(unint64_t)a3;
@end

@implementation APAttributionAnalytics

- (APAttributionAnalytics)init
{
  v8.receiver = self;
  v8.super_class = APAttributionAnalytics;
  v2 = [(APAttributionAnalytics *)&v8 init];
  v3 = v2;
  if (v2)
  {
    storefrontID = v2->_storefrontID;
    v2->_storefrontID = &stru_1004810B8;

    v3->_state = 0;
    v5 = [[APUnfairLock alloc] initWithOptions:0];
    analyticsLock = v3->_analyticsLock;
    v3->_analyticsLock = v5;
  }

  return v3;
}

- (void)sendAnalytics
{
  [(APUnfairLock *)self->_analyticsLock lock];
  if (self->_state == 3)
  {
    end = self->_end;
    serverPostEnd = self->_serverPostEnd;
    lsProxyEnd = self->_lsProxyEnd;
    serverPostStart = self->_serverPostStart;
    if (serverPostEnd >= serverPostStart)
    {
      v7 = serverPostEnd - serverPostStart;
    }

    else
    {
      v7 = 0;
    }

    start = self->_start;
    tokenDaemonStart = self->_tokenDaemonStart;
    if (tokenDaemonStart >= start)
    {
      v10 = tokenDaemonStart - start;
    }

    else
    {
      v10 = 0;
    }

    tokenDaemonEnd = self->_tokenDaemonEnd;
    tokenStart = self->_tokenStart;
    v24 = tokenDaemonEnd >= start;
    v13 = tokenDaemonEnd - start;
    if (v24)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (tokenStart >= start)
    {
      v15 = tokenStart - start;
    }

    else
    {
      v15 = 0;
    }

    tokenEnd = self->_tokenEnd;
    lsProxyStart = self->_lsProxyStart;
    v24 = tokenEnd >= start;
    v18 = tokenEnd - start;
    if (v24)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = lsProxyStart - start;
    if (lsProxyStart < start)
    {
      v20 = 0;
    }

    v24 = lsProxyEnd >= start;
    v21 = lsProxyEnd - start;
    if (!v24)
    {
      v21 = 0;
    }

    v51 = v20;
    v52 = v21;
    v24 = serverPostStart >= start;
    v22 = serverPostStart - start;
    if (!v24)
    {
      v22 = 0;
    }

    v24 = serverPostEnd >= start;
    v23 = serverPostEnd - start;
    if (!v24)
    {
      v23 = 0;
    }

    v53 = v22;
    v54 = v23;
    v24 = end >= start;
    v25 = end - start;
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (!v24)
    {
      v27 = APLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_start;
        v29 = self->_end;
        *buf = 134218240;
        v59 = v28;
        v60 = 2048;
        v61 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Attribution start time %lu should not be greater than end time %lu", buf, 0x16u);
      }

      start = self->_start;
      tokenDaemonStart = self->_tokenDaemonStart;
    }

    if (tokenDaemonStart < start)
    {
      v30 = APLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = self->_start;
        v32 = self->_tokenDaemonStart;
        *buf = 134218240;
        v59 = v31;
        v60 = 2048;
        v61 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Attribution client start time %lu should not be greater than attribution daemon start time %lu", buf, 0x16u);
      }
    }

    if (self->_end < self->_tokenDaemonEnd)
    {
      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = self->_start;
        v35 = self->_tokenDaemonStart;
        *buf = 134218240;
        v59 = v34;
        v60 = 2048;
        v61 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Attribution deamon end time %lu should not be greater than Attribution client end time %lu", buf, 0x16u);
      }
    }

    v56[0] = @"attributionRoundTrip";
    v50 = [NSNumber numberWithUnsignedInteger:v26];
    v57[0] = v50;
    v56[1] = @"svrPostRoundTrip";
    v49 = [NSNumber numberWithUnsignedInteger:v7];
    storefrontID = self->_storefrontID;
    v57[1] = v49;
    v57[2] = storefrontID;
    v56[2] = @"storeFront";
    v56[3] = @"DaemonStart";
    v48 = [NSNumber numberWithUnsignedInteger:v10];
    v57[3] = v48;
    v56[4] = @"DaemonEnd";
    v37 = [NSNumber numberWithUnsignedInteger:v14];
    v57[4] = v37;
    v56[5] = @"TokenGenerateStart";
    v38 = [NSNumber numberWithUnsignedInteger:v15];
    v57[5] = v38;
    v56[6] = @"TokenGenerateEnd";
    v39 = [NSNumber numberWithUnsignedInteger:v19];
    v57[6] = v39;
    v56[7] = @"LSProxyStart";
    v40 = [NSNumber numberWithUnsignedInteger:v51];
    v57[7] = v40;
    v56[8] = @"LSProxyEnd";
    v41 = [NSNumber numberWithUnsignedInteger:v52];
    v57[8] = v41;
    v56[9] = @"ServerPostStart";
    v42 = [NSNumber numberWithUnsignedInteger:v53];
    v57[9] = v42;
    v56[10] = @"ServerPostEnd";
    v43 = [NSNumber numberWithUnsignedInteger:v54];
    v57[10] = v43;
    v56[11] = @"AttributionEnd";
    v55 = v26;
    v44 = [NSNumber numberWithUnsignedInteger:v26];
    v57[11] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:12];

    [APAnalytics sendEvent:@"attribution.latency" customPayload:v45];
    v46 = APLogForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v59 = v55;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Attribution Roundtrip %lu", buf, 0xCu);
    }

    [(APUnfairLock *)self->_analyticsLock unlock];
  }

  else
  {
    analyticsLock = self->_analyticsLock;

    [(APUnfairLock *)analyticsLock unlock];
  }
}

- (void)sendTokenAnalytics
{
  if (self->_status)
  {
    errorCode = self->_errorCode;
    if (errorCode)
    {
      v4 = errorCode;
    }

    else
    {
      v4 = +[NSNull null];
    }

    v5 = v4;
    status = self->_status;
    v13[0] = @"Status";
    v13[1] = @"Code";
    v14[0] = status;
    v14[1] = v4;
    v13[2] = @"Retry";
    v7 = [NSNumber numberWithInteger:self->_retry];
    v14[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

    [APAnalytics sendEvent:@"attribution.token" customPayload:v8];
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_status;
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Analytics token event status %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Analytics status cannot be nil", &v11, 2u);
    }
  }
}

- (void)setEnd:(unint64_t)a3
{
  [(APUnfairLock *)self->_analyticsLock lock];
  self->_end = a3;
  state = self->_state;
  if (state)
  {
    if (state != 2)
    {
      goto LABEL_6;
    }

    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  self->_state = v6;
LABEL_6:
  analyticsLock = self->_analyticsLock;

  [(APUnfairLock *)analyticsLock unlock];
}

- (unint64_t)end
{
  [(APUnfairLock *)self->_analyticsLock lock];
  end = self->_end;
  [(APUnfairLock *)self->_analyticsLock unlock];
  return end;
}

- (void)setServerPostEnd:(unint64_t)a3
{
  [(APUnfairLock *)self->_analyticsLock lock];
  self->_serverPostEnd = a3;
  state = self->_state;
  if (state)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  self->_state = v6;
LABEL_6:
  analyticsLock = self->_analyticsLock;

  [(APUnfairLock *)analyticsLock unlock];
}

- (unint64_t)serverPostEnd
{
  [(APUnfairLock *)self->_analyticsLock lock];
  serverPostEnd = self->_serverPostEnd;
  [(APUnfairLock *)self->_analyticsLock unlock];
  return serverPostEnd;
}

+ (void)sendTokenDuplicateAnalytics:(id)a3
{
  v3 = a3;
  v8 = @"source";
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [APAnalytics sendEvent:@"attribution.duplicate" customPayload:v4];

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Analytics duplicate token event status %{public}@", &v6, 0xCu);
  }
}

+ (id)_buildPayloadForTimingAnalytics:(id)a3 startDate:(id)a4 endDate:(id)a5 additionalFields:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length])
  {
    v13 = 0.0;
    if (v10)
    {
      if (v11)
      {
        [v11 timeIntervalSinceDate:v10];
        v13 = v14;
        if (v14 < 0.0)
        {
          v15 = APLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136642819;
            v24 = "+[APAttributionAnalytics _buildPayloadForTimingAnalytics:startDate:endDate:additionalFields:]";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{sensitive}s] Start date is prior to end date", buf, 0xCu);
          }
        }
      }
    }

    v16 = [NSNumber numberWithInteger:(v13 * 1000.0), v9];
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    if (v12)
    {
      v18 = [v17 mutableCopy];
      [v18 addEntriesFromDictionary:v12];
      v19 = [v18 copy];

      v17 = v19;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (int64_t)findBucketForDaemonRunningTime:(double)a3
{
  for (result = 0; result != 10; ++result)
  {
    if (qword_1003EB678[result] >= (a3 * 1000.0))
    {
      break;
    }
  }

  return result;
}

+ (id)storefrontCountryOnly:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = @"NONE";
  if (v3 && ([v3 isEqualToString:@"NONE"] & 1) == 0)
  {
    v6 = [v4 componentsSeparatedByString:@"-"];
    if ([v6 count])
    {
      v7 = [v6 firstObject];
    }

    else
    {
      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error extracting storefront country only.", v10, 2u);
      }

      v7 = v4;
    }

    v5 = v7;
  }

  return v5;
}

+ (void)sendTimingAnalytics:(id)a3 startDate:(id)a4 endDate:(id)a5 additionalFields:(id)a6
{
  v6 = [a1 _buildPayloadForTimingAnalytics:a3 startDate:a4 endDate:a5 additionalFields:a6];
  if (v6)
  {
    [APAnalytics sendEvent:@"attribution.timings" customPayload:v6];
  }

  _objc_release_x1();
}

+ (void)sendTimedAnalytic:(id)a3 fieldName:(id)a4 startDate:(id)a5 endDate:(id)a6 additionalFields:(id)a7
{
  v13 = a3;
  v12 = [a1 _buildPayloadForTimingAnalytics:a4 startDate:a5 endDate:a6 additionalFields:a7];
  if (v12)
  {
    [APAnalytics sendEvent:v13 customPayload:v12];
  }
}

@end