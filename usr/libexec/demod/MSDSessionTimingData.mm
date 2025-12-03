@interface MSDSessionTimingData
- (MSDSessionTimingData)initWithData:(id)data forServerType:(id)type;
- (int64_t)getCountStat:(id)stat inTimingData:(id)data;
- (void)extractTimingData:(id)data forServerType:(id)type;
- (void)uploadTimingData;
@end

@implementation MSDSessionTimingData

- (MSDSessionTimingData)initWithData:(id)data forServerType:(id)type
{
  dataCopy = data;
  typeCopy = type;
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

    [(MSDSessionTimingData *)v9 extractTimingData:dataCopy forServerType:typeCopy];
  }

  return v9;
}

- (void)extractTimingData:(id)data forServerType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v7 = [dataCopy objectForKey:@"_kCFNTimingDataConnectionStopTimeCounts"];
  [(MSDSessionTimingData *)self setServerType:typeCopy];

  v8 = [v7 objectForKey:@"_kCFNTimingDataNStatAvgRTT"];

  if (v8)
  {
    v9 = [v7 objectForKey:@"_kCFNTimingDataNStatAvgRTT"];
    -[MSDSessionTimingData setAvgRTT:](self, "setAvgRTT:", [v9 integerValue]);

    rawTimingData = [(MSDSessionTimingData *)self rawTimingData];
    v11 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self avgRTT]];
    [rawTimingData setObject:v11 forKey:@"_kCFNTimingDataNStatAvgRTT"];
  }

  [(MSDSessionTimingData *)self setRetransmitBytes:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatTXRetransmit" inTimingData:dataCopy]];
  [(MSDSessionTimingData *)self setTotalBytesSent:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatTXBytes" inTimingData:dataCopy]];
  if (([(MSDSessionTimingData *)self retransmitBytes]& 0x8000000000000000) == 0 && [(MSDSessionTimingData *)self totalBytesSent]>= 1)
  {
    [(MSDSessionTimingData *)self setPacketLoss:100 * [(MSDSessionTimingData *)self retransmitBytes]/ [(MSDSessionTimingData *)self totalBytesSent]];
    rawTimingData2 = [(MSDSessionTimingData *)self rawTimingData];
    v13 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self retransmitBytes]];
    [rawTimingData2 setObject:v13 forKey:@"_kCFNTimingDataNStatTXRetransmit"];

    rawTimingData3 = [(MSDSessionTimingData *)self rawTimingData];
    v15 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self totalBytesSent]];
    [rawTimingData3 setObject:v15 forKey:@"_kCFNTimingDataNStatTXBytes"];
  }

  v16 = [dataCopy objectForKey:@"_kCFNTimingDataResponseEnd"];
  v17 = -1.0;
  if (v16)
  {
    v18 = v16;
    v19 = [dataCopy objectForKey:@"_kCFNTimingDataResponseStart"];

    if (v19)
    {
      v20 = [dataCopy objectForKey:@"_kCFNTimingDataResponseEnd"];
      [v20 doubleValue];
      [(MSDSessionTimingData *)self setResponseEnd:?];

      v21 = [dataCopy objectForKey:@"_kCFNTimingDataResponseStart"];
      [v21 doubleValue];
      [(MSDSessionTimingData *)self setResponseStart:?];

      [(MSDSessionTimingData *)self responseEnd];
      v23 = v22;
      [(MSDSessionTimingData *)self responseStart];
      v17 = v23 - v24;
      rawTimingData4 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self responseEnd];
      v26 = [NSNumber numberWithDouble:?];
      [rawTimingData4 setObject:v26 forKey:@"_kCFNTimingDataResponseEnd"];

      rawTimingData5 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self responseStart];
      v28 = [NSNumber numberWithDouble:?];
      [rawTimingData5 setObject:v28 forKey:@"_kCFNTimingDataResponseStart"];
    }
  }

  v29 = [dataCopy objectForKey:@"_kCFNTimingDataRequestEnd"];
  if (v29)
  {
    v30 = v29;
    v31 = [dataCopy objectForKey:@"_kCFNTimingDataRequestStart"];

    if (v31)
    {
      v32 = [dataCopy objectForKey:@"_kCFNTimingDataRequestEnd"];
      [v32 doubleValue];
      [(MSDSessionTimingData *)self setRequestEnd:?];

      v33 = [dataCopy objectForKey:@"_kCFNTimingDataRequestStart"];
      [v33 doubleValue];
      [(MSDSessionTimingData *)self setRequestStart:?];

      rawTimingData6 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self requestEnd];
      v35 = [NSNumber numberWithDouble:?];
      [rawTimingData6 setObject:v35 forKey:@"_kCFNTimingDataRequestEnd"];

      rawTimingData7 = [(MSDSessionTimingData *)self rawTimingData];
      [(MSDSessionTimingData *)self requestStart];
      v37 = [NSNumber numberWithDouble:?];
      [rawTimingData7 setObject:v37 forKey:@"_kCFNTimingDataRequestStart"];
    }
  }

  [(MSDSessionTimingData *)self setTotalBytesReceived:[(MSDSessionTimingData *)self getCountStat:@"_kCFNTimingDataNStatRXBytes" inTimingData:dataCopy]];
  if (([(MSDSessionTimingData *)self totalBytesReceived]& 0x8000000000000000) == 0)
  {
    rawTimingData8 = [(MSDSessionTimingData *)self rawTimingData];
    v39 = [NSNumber numberWithInteger:[(MSDSessionTimingData *)self totalBytesReceived]];
    [rawTimingData8 setObject:v39 forKey:@"_kCFNTimingDataNStatRXBytes"];

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
    avgRTT = [(MSDSessionTimingData *)self avgRTT];
    serverType = [(MSDSessionTimingData *)self serverType];
    [v3 sendNetworkAverageRTTEvent:avgRTT forServerType:serverType];
  }

  if ([(MSDSessionTimingData *)self packetLoss]!= -1)
  {
    v6 = +[MSDAnalyticsEventHandler sharedInstance];
    packetLoss = [(MSDSessionTimingData *)self packetLoss];
    serverType2 = [(MSDSessionTimingData *)self serverType];
    [v6 sendNetworkPacketLossEvent:packetLoss forServerType:serverType2];
  }

  if ([(MSDSessionTimingData *)self downloadSpeed]!= -1)
  {
    v9 = +[MSDAnalyticsEventHandler sharedInstance];
    downloadSpeed = [(MSDSessionTimingData *)self downloadSpeed];
    serverType3 = [(MSDSessionTimingData *)self serverType];
    [v9 sendNetworkAverageBandwidthEvent:downloadSpeed forServerType:serverType3];
  }

  rawTimingData = [(MSDSessionTimingData *)self rawTimingData];
  v13 = [rawTimingData count];

  if (v13)
  {
    v16 = +[MSDAnalyticsEventHandler sharedInstance];
    rawTimingData2 = [(MSDSessionTimingData *)self rawTimingData];
    serverType4 = [(MSDSessionTimingData *)self serverType];
    [v16 sendNetworkRawDataEvent:rawTimingData2 forServerType:serverType4];
  }
}

- (int64_t)getCountStat:(id)stat inTimingData:(id)data
{
  statCopy = stat;
  dataCopy = data;
  v7 = [dataCopy objectForKey:@"_kCFNTimingDataConnectionStopTimeCounts"];
  v8 = [dataCopy objectForKey:@"_kCFNTimingDataConnectionStartTimeCounts"];

  v9 = [v7 objectForKey:statCopy];
  if (v9 && (v10 = v9, [v8 objectForKey:statCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v8 objectForKey:statCopy];
    integerValue = [v12 integerValue];

    v14 = [v7 objectForKey:statCopy];
    integerValue2 = [v14 integerValue];

    v16 = integerValue2 - integerValue;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

@end