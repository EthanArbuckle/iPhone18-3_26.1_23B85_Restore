@interface MSDSessionTransactionData
- (MSDSessionTransactionData)initWithData:(id)data;
- (void)saveToFile:(id)file;
@end

@implementation MSDSessionTransactionData

- (MSDSessionTransactionData)initWithData:(id)data
{
  dataCopy = data;
  v46.receiver = self;
  v46.super_class = MSDSessionTransactionData;
  v5 = [(MSDSessionTransactionData *)&v46 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(MSDSessionTransactionData *)v5 setData:v6];

    v7 = [MSDSessionTimeIntervalDataPoint alloc];
    domainLookupStartDate = [dataCopy domainLookupStartDate];
    domainLookupEndDate = [dataCopy domainLookupEndDate];
    v45 = [(MSDSessionTimeIntervalDataPoint *)v7 initWithStartTime:domainLookupStartDate endTime:domainLookupEndDate];

    data = [(MSDSessionTransactionData *)v5 data];
    [data setObject:v45 forKey:@"DNSResolutionTime"];

    v11 = [MSDSessionTimeIntervalDataPoint alloc];
    connectStartDate = [dataCopy connectStartDate];
    connectEndDate = [dataCopy connectEndDate];
    v44 = [(MSDSessionTimeIntervalDataPoint *)v11 initWithStartTime:connectStartDate endTime:connectEndDate];

    data2 = [(MSDSessionTransactionData *)v5 data];
    [data2 setObject:v44 forKey:@"ConectionEstablishmentTime"];

    v15 = [MSDSessionTimeIntervalDataPoint alloc];
    connectStartDate2 = [dataCopy connectStartDate];
    secureConnectionStartDate = [dataCopy secureConnectionStartDate];
    v43 = [(MSDSessionTimeIntervalDataPoint *)v15 initWithStartTime:connectStartDate2 endTime:secureConnectionStartDate];

    data3 = [(MSDSessionTransactionData *)v5 data];
    [data3 setObject:v43 forKey:@"TCPConnectionTime"];

    v19 = [MSDSessionTimeIntervalDataPoint alloc];
    secureConnectionStartDate2 = [dataCopy secureConnectionStartDate];
    secureConnectionEndDate = [dataCopy secureConnectionEndDate];
    v22 = [(MSDSessionTimeIntervalDataPoint *)v19 initWithStartTime:secureConnectionStartDate2 endTime:secureConnectionEndDate];

    data4 = [(MSDSessionTransactionData *)v5 data];
    [data4 setObject:v22 forKey:@"SecureConnectionTime"];

    v24 = [MSDSessionTimeIntervalDataPoint alloc];
    requestStartDate = [dataCopy requestStartDate];
    requestEndDate = [dataCopy requestEndDate];
    v27 = [(MSDSessionTimeIntervalDataPoint *)v24 initWithStartTime:requestStartDate endTime:requestEndDate];

    data5 = [(MSDSessionTransactionData *)v5 data];
    [data5 setObject:v27 forKey:@"RequestTime"];

    v29 = [MSDSessionTimeIntervalDataPoint alloc];
    responseStartDate = [dataCopy responseStartDate];
    responseEndDate = [dataCopy responseEndDate];
    v32 = [(MSDSessionTimeIntervalDataPoint *)v29 initWithStartTime:responseStartDate endTime:responseEndDate];

    data6 = [(MSDSessionTransactionData *)v5 data];
    [data6 setObject:v32 forKey:@"ResponseTime"];

    countOfRequestHeaderBytesSent = [dataCopy countOfRequestHeaderBytesSent];
    countOfRequestBodyBytesSent = [dataCopy countOfRequestBodyBytesSent];
    countOfResponseHeaderBytesReceived = [dataCopy countOfResponseHeaderBytesReceived];
    countOfResponseBodyBytesReceived = [dataCopy countOfResponseBodyBytesReceived];
    v38 = [[MSDSessionCountDataPoint alloc] initWithCount:&countOfRequestHeaderBytesSent[countOfRequestBodyBytesSent]];
    v39 = [[MSDSessionCountDataPoint alloc] initWithCount:&countOfResponseHeaderBytesReceived[countOfResponseBodyBytesReceived]];
    data7 = [(MSDSessionTransactionData *)v5 data];
    [data7 setObject:v38 forKey:@"RequestBytesSent"];

    data8 = [(MSDSessionTransactionData *)v5 data];
    [data8 setObject:v39 forKey:@"ResponseBytesReceived"];
  }

  return v5;
}

- (void)saveToFile:(id)file
{
  v21.receiver = self;
  v21.super_class = MSDSessionTransactionData;
  fileCopy = file;
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
        data = [(MSDSessionTransactionData *)self data];
        v13 = [data objectForKey:v11];

        if (v13)
        {
          print = [v13 print];
          [v5 appendFormat:@"%@, ", print];
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
  [fileCopy writeData:v15];
}

@end