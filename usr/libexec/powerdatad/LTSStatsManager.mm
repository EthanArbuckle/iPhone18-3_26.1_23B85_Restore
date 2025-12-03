@interface LTSStatsManager
+ (id)sharedLTSStatsManager;
- (LTSStatsManager)init;
- (id)getLifetimeStats;
- (id)getStatsSinceBoot;
- (int)updateLifetimeStatsForChannel:(__CFDictionary *)channel;
- (void)dealloc;
- (void)updateLifetimeStats;
- (void)updateLifetimeStatsGated;
@end

@implementation LTSStatsManager

+ (id)sharedLTSStatsManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000684C;
  block[3] = &unk_100010690;
  block[4] = self;
  if (qword_100014B48 != -1)
  {
    dispatch_once(&qword_100014B48, block);
  }

  v2 = qword_100014B40;

  return v2;
}

- (LTSStatsManager)init
{
  cf = 0;
  v3 = os_log_create("com.apple.powerdatad", "LTSStats");
  v4 = off_100014B00;
  off_100014B00 = v3;

  v17.receiver = self;
  v17.super_class = LTSStatsManager;
  v5 = [(LTSStatsManager *)&v17 init];
  if (!v5)
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_10000877C();
    }

    v6 = 0;
    goto LABEL_22;
  }

  v6 = IOServiceNameMatching("RTBuddyIOReportingEndpoint");
  v7 = IOReportCopyChannelsForDrivers();
  if (!v7)
  {
    v15 = off_100014B00;
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = cf;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "IOReportCopyChannelsForDrivers error: %{public}@", buf, 0xCu);
    }

LABEL_22:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  if (IOReportGetChannelCount())
  {
    IOReportPrune();
    if (IOReportGetChannelCount())
    {
      Subscription = IOReportCreateSubscription();
      v5->_subscription = Subscription;
      if (Subscription)
      {
        v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v11 = dispatch_queue_create("com.apple.powerdatad.ltsqueue", v10);
        queue = v5->_queue;
        v5->_queue = v11;
      }

      else if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
      {
        sub_100008624(&cf);
      }
    }

    else
    {
      sub_10000869C(v6, v8, &v19, buf);
      v6 = v19;
      v8 = *buf;
    }
  }

  else
  {
    v16 = off_100014B00;
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "RTBuddyIOReportingEndpoint";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No channels found for service %s", buf, 0xCu);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5->_queue)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  v3 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc call\n", buf, 2u);
  }

  subscription = self->_subscription;
  if (subscription)
  {
    CFRelease(subscription);
  }

  subscribedChannels = self->_subscribedChannels;
  if (subscribedChannels)
  {
    CFRelease(subscribedChannels);
  }

  v6.receiver = self;
  v6.super_class = LTSStatsManager;
  [(LTSStatsManager *)&v6 dealloc];
}

- (id)getStatsSinceBoot
{
  if (self->_subscription)
  {
    subscribedChannels = self->_subscribedChannels;
    Samples = IOReportCreateSamples();
    if (Samples)
    {
      goto LABEL_3;
    }

    sub_1000087B0();
  }

  else
  {
    sub_100008850(&v5);
  }

  Samples = v5;
LABEL_3:

  return Samples;
}

- (int)updateLifetimeStatsForChannel:(__CFDictionary *)channel
{
  ChannelName = IOReportChannelGetChannelName();
  if (!ChannelName)
  {
    sub_1000089C0(buf);
    return *buf;
  }

  v4 = ChannelName;
  ChannelID = IOReportChannelGetChannelID();
  v6 = [[LTSStatsStore alloc] initForChannel:v4];
  if (!v6)
  {
    sub_10000891C();
    return *buf;
  }

  v7 = v6;
  v32 = ChannelID;
  v8 = [v6 getLifetimeStatsForVersion:ChannelID];
  Count = IOReportStateGetCount();
  v10 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
  {
    sub_1000088B0(v8, v10, v11, v12, v13, v14, v15, v16);
  }

  if (Count < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    *&v17 = 138412546;
    v31 = v17;
    do
    {
      v20 = v18;
      v18 = IOReportStateGetNameForIndex();

      v21 = IOReportStateGetInTransitions();
      v22 = off_100014B00;
      if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
      {
        v27 = v22;
        v28 = [v8 objectForKeyedSubscript:v18];
        *buf = 138412802;
        v34 = v18;
        v35 = 2048;
        v36 = v21;
        v37 = 2112;
        v38 = v28;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Incremented count for state %@ by %lld. Previous value: %@\n", buf, 0x20u);
      }

      v23 = [v8 objectForKeyedSubscript:{v18, v31}];

      if (v23)
      {
        v24 = [v8 objectForKeyedSubscript:v18];
        v21 += [v24 unsignedLongValue];
      }

      else
      {
        v25 = off_100014B00;
        if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
        {
          *buf = v31;
          v34 = v18;
          v35 = 2048;
          v36 = v21;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Added new state %@ to lifetime stats with count %lld", buf, 0x16u);
        }
      }

      v26 = [NSNumber numberWithUnsignedLong:v21];
      [v8 setObject:v26 forKeyedSubscript:v18];

      ++v19;
    }

    while (Count != v19);
  }

  [v7 saveLifetimeStats:v8 forVersion:v32];
  v29 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v34 = v4;
    v35 = 1024;
    LODWORD(v36) = Count;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Updated Channel name: %{public}@ Num States: %d", buf, 0x12u);
  }

  return 0;
}

- (void)updateLifetimeStatsGated
{
  v11[4] = self;
  cf = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007178;
  v11[3] = &unk_100010720;
  v3 = objc_retainBlock(v11);
  getStatsSinceBoot = [(LTSStatsManager *)self getStatsSinceBoot];
  if (getStatsSinceBoot)
  {
    prevStatsSinceBoot = self->_prevStatsSinceBoot;
    p_prevStatsSinceBoot = &self->_prevStatsSinceBoot;
    if (!prevStatsSinceBoot)
    {
      v7 = +[LTSStatsStore getPrevStatsSinceBoot];
      v8 = *p_prevStatsSinceBoot;
      *p_prevStatsSinceBoot = v7;

      if (!*p_prevStatsSinceBoot)
      {
        SamplesDelta = getStatsSinceBoot;
        v10 = off_100014B00;
        if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No Previously saved stats since boot\n", buf, 2u);
        }

        goto LABEL_5;
      }
    }

    SamplesDelta = IOReportCreateSamplesDelta();
    if (SamplesDelta)
    {
LABEL_5:
      IOReportIterate();
      [LTSStatsStore saveStatsSinceBoot:getStatsSinceBoot];
      objc_storeStrong(p_prevStatsSinceBoot, getStatsSinceBoot);
      goto LABEL_6;
    }

    sub_100008A2C();
  }

  else
  {
    sub_100008ACC(buf);
  }

  SamplesDelta = *buf;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)updateLifetimeStats
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000071F8;
  block[3] = &unk_100010748;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)getLifetimeStats
{
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 0x3032000000;
  v7[2] = sub_100007318;
  v7[3] = sub_100007328;
  v8 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007330;
  v5[3] = &unk_100010770;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
  {
    sub_100008B2C(v7);
  }

  v3 = *(v7[0] + 40);
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end