@interface MSDSessionTimingData
- (MSDSessionTimingData)initWithData:(id)a3 forServerType:(id)a4;
- (int64_t)getCountStat:(id)a3 inTimingData:(id)a4;
- (void)extractTimingData:(id)a3 forServerType:(id)a4;
- (void)uploadTimingData;
@end

@implementation MSDSessionTimingData

- (MSDSessionTimingData)initWithData:(id)a3 forServerType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MSDSessionTimingData;
  v8 = [(MSDSessionTimingData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MSDSessionTimingData *)v8 setAvgRTT:-1];
    [(MSDSessionTimingData *)v9 setDownloadSpeed:-1];
    [(MSDSessionTimingData *)v9 setPacketLoss:-1];
    [(MSDSessionTimingData *)v9 setRetryCount:-1];
    v10 = objc_alloc_init(NSMutableDictionary);
    [(MSDSessionTimingData *)v9 setRawTimingData:v10];

    [(MSDSessionTimingData *)v9 extractTimingData:v6 forServerType:v7];
  }

  return v9;
}

- (void)extractTimingData:(id)a3 forServerType:(id)a4
{
  v40 = a3;
  v6 = a4;
  v7 = [v40 objectForKey:@"_kCFNTimingDataConnectionStopTimeCounts"];
  [(MSDSessionTimingData *)self setServerType:v6];

  v8 = [v7 objectForKey:@"_kCFNTimingDataNStatAvgRTT"];

  if (v8)
  {
    v9 = [v7 objectForKey:@"_kCFNTimingDataNStatAvgRTT"];
    -[MSDSessionTimingData setAvgRTT:](self, "setAvgRTT:", [v9 integerValue]);

    v10 = [(MSDSessionTimingData *)self rawTimingData];
    v11 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self avgRTT]];
    [v10 setObject:v11 forKey:@"_kCFNTimingDataNStatAvgRTT"];
  }

  [(MSDSessionTimingData *)self setRetransmitBytes:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatTXRetransmit" inTimingData:v40]];
  [(MSDSessionTimingData *)self setTotalBytesSent:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatTXBytes" inTimingData:v40]];
  if (([(MSDSessionTimingData *)self retransmitBytes]& 0x8000000000000000) == 0 && [(MSDSessionTimingData *)self totalBytesSent]>= 1)
  {
    [(MSDSessionTimingData *)self setPacketLoss:100 * [(MSDSessionTimingData *)self retransmitBytes]/ [(MSDSessionTimingData *)self totalBytesSent]];
    v12 = [(MSDSessionTimingData *)self rawTimingData];
    v13 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self retransmitBytes]];
    [v12 setObject:v13 forKey:@"_kCFNTimingDataNStatTXRetransmit"];

    v14 = [(MSDSessionTimingData *)self rawTimingData];
    v15 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self totalBytesSent]];
    [v14 setObject:v15 forKey:@"_kCFNTimingDataNStatTXBytes"];
  }

  v16 = [v40 objectForKey:@"_kCFNTimingDataResponseEnd"];
  v17 = -1.0;
  if (v16)
  {
    v18 = v16;
    v19 = [v40 objectForKey:@"_kCFNTimingDataResponseStart"];

    if (v19)
    {
      v20 = [v40 objectForKey:@"_kCFNTimingDataResponseEnd"];
      [v20 doubleValue];
      [(MSDSessionTimingData *)self setResponseEnd:?];

      v21 = [v40 objectForKey:@"_kCFNTimingDataResponseStart"];
      [v21 doubleValue];
      [(MSDSessionTimingData *)self setResponseStart:?];

      [(MSDSessionTimingData *)self responseEnd];
      v23 = v22;
      [(MSDSessionTimingData *)self responseStart];
      v17 = v23 - v24;
      v25 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self responseEnd];
      v26 = [NSNumber numberWithDouble:?];
      [v25 setObject:v26 forKey:@"_kCFNTimingDataResponseEnd"];

      v27 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self responseStart];
      v28 = [NSNumber numberWithDouble:?];
      [v27 setObject:v28 forKey:@"_kCFNTimingDataResponseStart"];
    }
  }

  v29 = [v40 objectForKey:@"_kCFNTimingDataRequestEnd"];
  if (v29)
  {
    v30 = v29;
    v31 = [v40 objectForKey:@"_kCFNTimingDataRequestStart"];

    if (v31)
    {
      v32 = [v40 objectForKey:@"_kCFNTimingDataRequestEnd"];
      [v32 doubleValue];
      [(MSDSessionTimingData *)self setRequestEnd:?];

      v33 = [v40 objectForKey:@"_kCFNTimingDataRequestStart"];
      [v33 doubleValue];
      [(MSDSessionTimingData *)self setRequestStart:?];

      v34 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self requestEnd];
      v35 = [NSNumber numberWithDouble:?];
      [v34 setObject:v35 forKey:@"_kCFNTimingDataRequestEnd"];

      v36 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self requestStart];
      v37 = [NSNumber numberWithDouble:?];
      [v36 setObject:v37 forKey:@"_kCFNTimingDataRequestStart"];
    }
  }

  [(MSDSessionTimingData *)self setTotalBytesReceived:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatRXBytes" inTimingData:v40]];
  if (([(MSDSessionTimingData *)self totalBytesReceived]& 0x8000000000000000) == 0)
  {
    v38 = [(MSDSessionTimingData *)self rawTimingData];
    v39 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self totalBytesReceived]];
    [v38 setObject:v39 forKey:@"_kCFNTimingDataNStatRXBytes"];

    if (v17 > 10.0)
    {
      [(MSDSessionTimingData *)self setDownloadSpeed:((8 * [(MSDSessionTimingData *)self totalBytesReceived]) / v17)];
    }
  }
}

- (void)uploadTimingData
{
  if ([(MSDSessionTimingData *)self avgRTT]!= -1)
  {
    v3 = +[MSDAnalyticsEventHandler sharedInstance];
    v4 = [(MSDSessionTimingData *)self avgRTT];
    v5 = [(MSDSessionTimingData *)self serverType];
    [v3 sendNetworkAverageRTTEvent:v4 forServerType:v5];
  }

  if ([(MSDSessionTimingData *)self packetLoss]!= -1)
  {
    v6 = +[MSDAnalyticsEventHandler sharedInstance];
    v7 = [(MSDSessionTimingData *)self packetLoss];
    v8 = [(MSDSessionTimingData *)self serverType];
    [v6 sendNetworkPacketLossEvent:v7 forServerType:v8];
  }

  if ([(MSDSessionTimingData *)self downloadSpeed]!= -1)
  {
    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    v10 = [(MSDSessionTimingData *)self downloadSpeed];
    v11 = [(MSDSessionTimingData *)self serverType];
    [v9 sendNetworkAverageBandwidthEvent:v10 forServerType:v11];
  }

  v12 = [(MSDSessionTimingData *)self rawTimingData];
  v13 = [v12 count];

  if (v13)
  {
    v16 = +[MSDAnalyticsEventHandler sharedInstance];
    v14 = [(MSDSessionTimingData *)self rawTimingData];
    v15 = [(MSDSessionTimingData *)self serverType];
    [v16 sendNetworkRawDataEvent:v14 forServerType:v15];
  }
}

- (int64_t)getCountStat:(id)a3 inTimingData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"_kCFNTimingDataConnectionStopTimeCounts"];
  v8 = [v6 objectForKey:@"_kCFNTimingDataConnectionStartTimeCounts"];

  v9 = [v7 objectForKey:v5];
  if (v9 && (v10 = v9, [v8 objectForKey:v5], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v8 objectForKey:v5];
    v13 = [v12 integerValue];

    v14 = [v7 objectForKey:v5];
    v15 = [v14 integerValue];

    v16 = v15 - v13;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

@end