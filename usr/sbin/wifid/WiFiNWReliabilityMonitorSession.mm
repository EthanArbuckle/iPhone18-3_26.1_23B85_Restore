@interface WiFiNWReliabilityMonitorSession
- (BOOL)isSessionReliable:(unint64_t)reliable;
- (WiFiNWReliabilityMonitorSession)initWithNetworkRecord:(void *)record withMetrics:(unint64_t)metrics withMaxSamples:(unint64_t)samples withMinSampleThresh:(int)thresh;
- (id)description;
- (unint64_t)getSampleCount:(unint64_t)count;
- (void)dealloc;
- (void)ingestLQMUpdate:(id)update;
@end

@implementation WiFiNWReliabilityMonitorSession

- (WiFiNWReliabilityMonitorSession)initWithNetworkRecord:(void *)record withMetrics:(unint64_t)metrics withMaxSamples:(unint64_t)samples withMinSampleThresh:(int)thresh
{
  v19.receiver = self;
  v19.super_class = WiFiNWReliabilityMonitorSession;
  v10 = [(WiFiNWReliabilityMonitorSession *)&v19 init];
  if (!v10)
  {
    goto LABEL_12;
  }

  if (!record)
  {
    sub_100138294();
LABEL_12:

    return 0;
  }

  v11 = sub_10000A540(record, @"BSSID");
  connectedBSSID = v10->_connectedBSSID;
  v10->_connectedBSSID = v11;

  v13 = sub_10000A878(record);
  connectedSSID = v10->_connectedSSID;
  v10->_connectedSSID = v13;

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s session created for BSSID:%@ SSID:%@", "-[WiFiNWReliabilityMonitorSession initWithNetworkRecord:withMetrics:withMaxSamples:withMinSampleThresh:]", v10->_connectedBSSID, v10->_connectedSSID}];
  }

  objc_autoreleasePoolPop(v15);
  v10->_maxSamples = samples;
  if (!samples)
  {
    goto LABEL_12;
  }

  v10->_minSampleThresh = thresh;
  if (!thresh)
  {
    goto LABEL_12;
  }

  v10->_metrics = metrics;
  if (!metrics)
  {
    goto LABEL_12;
  }

  if (metrics)
  {
    v16 = [[WiFiNWReliabilityMonitorDataStore alloc] initWithMetric:1 withMaxSamples:v10->_maxSamples];
    rssiStore = v10->_rssiStore;
    v10->_rssiStore = v16;

    if (!v10->_rssiStore)
    {
      goto LABEL_12;
    }
  }

  return v10;
}

- (void)dealloc
{
  rssiStore = self->_rssiStore;
  if (rssiStore)
  {
    self->_rssiStore = 0;
  }

  v4.receiver = self;
  v4.super_class = WiFiNWReliabilityMonitorSession;
  [(WiFiNWReliabilityMonitorSession *)&v4 dealloc];
}

- (void)ingestLQMUpdate:(id)update
{
  updateCopy = update;
  v11 = updateCopy;
  if (updateCopy)
  {
    v5 = [updateCopy objectForKeyedSubscript:@"RSSI"];
    intValue = [v5 intValue];

    v7 = -[WiFiNWReliabilitDataStoreSampleType init:withTimestamp:]([WiFiNWReliabilitDataStoreSampleType alloc], "init:withTimestamp:", intValue, [v11 objectForKey:@"LQMTIMESTAMP"]);
    [(WiFiNWReliabilityMonitorDataStore *)self->_rssiStore addSample:v7];
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = [(WiFiNWReliabilityMonitorSession *)self description];
      [v9 WFLog:3 message:{"%s: Session:%@ received LQM update, RSSI:%d", "-[WiFiNWReliabilityMonitorSession ingestLQMUpdate:]", v10, intValue}];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    sub_1001382F4();
  }
}

- (BOOL)isSessionReliable:(unint64_t)reliable
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = 1;
  v11 = 1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  rssiStore = self->_rssiStore;
  if (rssiStore)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100038918;
    v6[3] = &unk_10025EA08;
    v6[4] = &v8;
    v6[5] = v7;
    v6[6] = reliable;
    [(WiFiNWReliabilityMonitorDataStore *)rssiStore getSamples:v6];
    v3 = *(v9 + 24);
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3 & 1;
}

- (unint64_t)getSampleCount:(unint64_t)count
{
  if (count == 1)
  {
    rssiStore = self->_rssiStore;

    return [(WiFiNWReliabilityMonitorDataStore *)rssiStore getCount];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Unsupported metric: %lu", "-[WiFiNWReliabilityMonitorSession getSampleCount:]", count}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)description
{
  connectedBSSID = [(WiFiNWReliabilityMonitorSession *)self connectedBSSID];
  connectedSSID = [(WiFiNWReliabilityMonitorSession *)self connectedSSID];
  v5 = [NSString stringWithFormat:@"[BSSID:%@ SSID:%@]", connectedBSSID, connectedSSID];

  return v5;
}

@end