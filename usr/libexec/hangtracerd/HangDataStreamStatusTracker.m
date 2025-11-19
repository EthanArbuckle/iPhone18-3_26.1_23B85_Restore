@interface HangDataStreamStatusTracker
+ (id)sharedInstance;
- (BOOL)isHangEndedWithDuration:(double)a3 updateInterval:(double)a4 hangID:(id)a5;
- (HangDataStreamStatusTracker)init;
@end

@implementation HangDataStreamStatusTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E448;
  block[3] = &unk_100055408;
  block[4] = a1;
  if (qword_100067B58 != -1)
  {
    dispatch_once(&qword_100067B58, block);
  }

  v2 = qword_100067B50;

  return v2;
}

- (HangDataStreamStatusTracker)init
{
  v6.receiver = self;
  v6.super_class = HangDataStreamStatusTracker;
  v2 = [(HangDataStreamStatusTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    hangHUDStatusDict = v2->_hangHUDStatusDict;
    v2->_hangHUDStatusDict = v3;
  }

  return v2;
}

- (BOOL)isHangEndedWithDuration:(double)a3 updateInterval:(double)a4 hangID:(id)a5
{
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKey:v8];

  if (!v9)
  {
    hangHUDStatusDict = self->_hangHUDStatusDict;
    v11 = objc_alloc_init(HangDataStreamStatus);
    [(NSMutableDictionary *)hangHUDStatusDict setObject:v11 forKey:v8];
  }

  v12 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKeyedSubscript:v8];
  [v12 previousDurationSinceLastUpdateMs];
  v14 = v13;
  v15 = sub_100027A10();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v12 previousDurationSinceLastUpdateMs];
    v21 = 134219522;
    v22 = a3;
    v23 = 2048;
    v24 = v20;
    v25 = 1024;
    v26 = [v12 countsOfMeetingEndingConditions];
    v27 = 1024;
    v28 = a3 > a4;
    v29 = 1024;
    v30 = v14 < a3;
    v31 = 2048;
    v32 = a4;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "isHangEndedWithDuration %f, previous_durationSinceLastUpdateMs:%f, counter:%i, is_latency_high:%i, is_latency_increasing:%i, hudUpdateInterval:%f, hangID:%@", &v21, 0x3Cu);
  }

  if (a3 <= a4 || v14 >= a3)
  {
    [v12 initStatus];
  }

  else
  {
    [v12 setCountsOfMeetingEndingConditions:{objc_msgSend(v12, "countsOfMeetingEndingConditions") + 1}];
    [v12 setPreviousDurationSinceLastUpdateMs:a3];
  }

  v16 = [v12 countsOfMeetingEndingConditions];
  v17 = sub_100027A10();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16 < 3)
  {
    if (v18)
    {
      sub_100033940(v8, v17);
    }
  }

  else
  {
    if (v18)
    {
      sub_1000339B8(v8, v17);
    }

    [v12 initStatus];
  }

  return v16 > 2;
}

@end