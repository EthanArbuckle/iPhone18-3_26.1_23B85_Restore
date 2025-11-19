@interface WiFiNWReliabilityMonitorSession
- (BOOL)isSessionReliable:(unint64_t)a3;
- (WiFiNWReliabilityMonitorSession)initWithNetworkRecord:(void *)a3 withMetrics:(unint64_t)a4 withMaxSamples:(unint64_t)a5 withMinSampleThresh:(int)a6;
- (id)description;
- (unint64_t)getSampleCount:(unint64_t)a3;
- (void)dealloc;
- (void)ingestLQMUpdate:(id)a3;
@end

@implementation WiFiNWReliabilityMonitorSession

- (WiFiNWReliabilityMonitorSession)initWithNetworkRecord:(void *)a3 withMetrics:(unint64_t)a4 withMaxSamples:(unint64_t)a5 withMinSampleThresh:(int)a6
{
  v19.receiver = self;
  v19.super_class = WiFiNWReliabilityMonitorSession;
  v10 = [(WiFiNWReliabilityMonitorSession *)&v19 init];
  if (!v10)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    sub_100138294();
LABEL_12:

    return 0;
  }

  v11 = sub_10000A540(a3, @"BSSID");
  connectedBSSID = v10->_connectedBSSID;
  v10->_connectedBSSID = v11;

  v13 = sub_10000A878(a3);
  connectedSSID = v10->_connectedSSID;
  v10->_connectedSSID = v13;

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s session created for BSSID:%@ SSID:%@", "-[WiFiNWReliabilityMonitorSession initWithNetworkRecord:withMetrics:withMaxSamples:withMinSampleThresh:]", v10->_connectedBSSID, v10->_connectedSSID}];
  }

  objc_autoreleasePoolPop(v15);
  v10->_maxSamples = a5;
  if (!a5)
  {
    goto LABEL_12;
  }

  v10->_minSampleThresh = a6;
  if (!a6)
  {
    goto LABEL_12;
  }

  v10->_metrics = a4;
  if (!a4)
  {
    goto LABEL_12;
  }

  if (a4)
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

- (void)ingestLQMUpdate:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"RSSI"];
    v6 = [v5 intValue];

    v7 = -[WiFiNWReliabilitDataStoreSampleType init:withTimestamp:]([WiFiNWReliabilitDataStoreSampleType alloc], "init:withTimestamp:", v6, [v11 objectForKey:@"LQMTIMESTAMP"]);
    [(WiFiNWReliabilityMonitorDataStore *)self->_rssiStore addSample:v7];
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = [(WiFiNWReliabilityMonitorSession *)self description];
      [v9 WFLog:3 message:{"%s: Session:%@ received LQM update, RSSI:%d", "-[WiFiNWReliabilityMonitorSession ingestLQMUpdate:]", v10, v6}];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    sub_1001382F4();
  }
}

- (BOOL)isSessionReliable:(unint64_t)a3
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
    v6[6] = a3;
    [(WiFiNWReliabilityMonitorDataStore *)rssiStore getSamples:v6];
    v3 = *(v9 + 24);
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3 & 1;
}

- (unint64_t)getSampleCount:(unint64_t)a3
{
  if (a3 == 1)
  {
    rssiStore = self->_rssiStore;

    return [(WiFiNWReliabilityMonitorDataStore *)rssiStore getCount];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Unsupported metric: %lu", "-[WiFiNWReliabilityMonitorSession getSampleCount:]", a3}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }
}

- (id)description
{
  v3 = [(WiFiNWReliabilityMonitorSession *)self connectedBSSID];
  v4 = [(WiFiNWReliabilityMonitorSession *)self connectedSSID];
  v5 = [NSString stringWithFormat:@"[BSSID:%@ SSID:%@]", v3, v4];

  return v5;
}

@end