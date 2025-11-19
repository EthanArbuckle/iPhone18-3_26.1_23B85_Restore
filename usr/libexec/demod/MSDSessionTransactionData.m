@interface MSDSessionTransactionData
- (MSDSessionTransactionData)initWithData:(id)a3;
- (void)saveToFile:(id)a3;
@end

@implementation MSDSessionTransactionData

- (MSDSessionTransactionData)initWithData:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = MSDSessionTransactionData;
  v5 = [(MSDSessionTransactionData *)&v46 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(MSDSessionTransactionData *)v5 setData:v6];

    v7 = [MSDSessionTimeIntervalDataPoint alloc];
    v8 = [v4 domainLookupStartDate];
    v9 = [v4 domainLookupEndDate];
    v45 = [(MSDSessionTimeIntervalDataPoint *)v7 initWithStartTime:v8 endTime:v9];

    v10 = [(MSDSessionTransactionData *)v5 data];
    [v10 setObject:v45 forKey:@"DNSResolutionTime"];

    v11 = [MSDSessionTimeIntervalDataPoint alloc];
    v12 = [v4 connectStartDate];
    v13 = [v4 connectEndDate];
    v44 = [(MSDSessionTimeIntervalDataPoint *)v11 initWithStartTime:v12 endTime:v13];

    v14 = [(MSDSessionTransactionData *)v5 data];
    [v14 setObject:v44 forKey:@"ConectionEstablishmentTime"];

    v15 = [MSDSessionTimeIntervalDataPoint alloc];
    v16 = [v4 connectStartDate];
    v17 = [v4 secureConnectionStartDate];
    v43 = [(MSDSessionTimeIntervalDataPoint *)v15 initWithStartTime:v16 endTime:v17];

    v18 = [(MSDSessionTransactionData *)v5 data];
    [v18 setObject:v43 forKey:@"TCPConnectionTime"];

    v19 = [MSDSessionTimeIntervalDataPoint alloc];
    v20 = [v4 secureConnectionStartDate];
    v21 = [v4 secureConnectionEndDate];
    v22 = [(MSDSessionTimeIntervalDataPoint *)v19 initWithStartTime:v20 endTime:v21];

    v23 = [(MSDSessionTransactionData *)v5 data];
    [v23 setObject:v22 forKey:@"SecureConnectionTime"];

    v24 = [MSDSessionTimeIntervalDataPoint alloc];
    v25 = [v4 requestStartDate];
    v26 = [v4 requestEndDate];
    v27 = [(MSDSessionTimeIntervalDataPoint *)v24 initWithStartTime:v25 endTime:v26];

    v28 = [(MSDSessionTransactionData *)v5 data];
    [v28 setObject:v27 forKey:@"RequestTime"];

    v29 = [MSDSessionTimeIntervalDataPoint alloc];
    v30 = [v4 responseStartDate];
    v31 = [v4 responseEndDate];
    v32 = [(MSDSessionTimeIntervalDataPoint *)v29 initWithStartTime:v30 endTime:v31];

    v33 = [(MSDSessionTransactionData *)v5 data];
    [v33 setObject:v32 forKey:@"ResponseTime"];

    v34 = [v4 countOfRequestHeaderBytesSent];
    v35 = [v4 countOfRequestBodyBytesSent];
    v36 = [v4 countOfResponseHeaderBytesReceived];
    v37 = [v4 countOfResponseBodyBytesReceived];
    v38 = [[MSDSessionCountDataPoint alloc] initWithCount:&v34[v35]];
    v39 = [[MSDSessionCountDataPoint alloc] initWithCount:&v36[v37]];
    v40 = [(MSDSessionTransactionData *)v5 data];
    [v40 setObject:v38 forKey:@"RequestBytesSent"];

    v41 = [(MSDSessionTransactionData *)v5 data];
    [v41 setObject:v39 forKey:@"ResponseBytesReceived"];
  }

  return v5;
}

- (void)saveToFile:(id)a3
{
  v21.receiver = self;
  v21.super_class = MSDSessionTransactionData;
  v16 = a3;
  [(MSDSessionMetricsData *)&v21 saveToFile:?];
  v4 = [NSArray arrayWithObjects:@"DNSResolutionTime", @"ConectionEstablishmentTime", @"TCPConnectionTime", @"SecureConnectionTime", @"RequestTime", @"ResponseTime", @"RequestBytesSent", @"ResponseBytesReceived", 0];
  v5 = objc_alloc_init(NSMutableString);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(MSDSessionTransactionData *)self data];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          v14 = [v13 print];
          [v5 appendFormat:@"%@, ", v14];
        }

        else
        {
          [v5 appendString:{@", "}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\n"];
  v15 = [v5 dataUsingEncoding:4];
  [v16 writeData:v15];
}

@end