@interface MSDSessionMetricsData
- (MSDSessionMetricsData)initWithData:(id)data;
- (void)saveToFile:(id)file;
- (void)writeFileHeaders:(id)headers;
@end

@implementation MSDSessionMetricsData

- (MSDSessionMetricsData)initWithData:(id)data
{
  dataCopy = data;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"Override %@ in a subclass", v5];

  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  objc_exception_throw(v7);
}

- (void)saveToFile:(id)file
{
  fileCopy = file;
  if (![fileCopy offsetInFile])
  {
    [(MSDSessionMetricsData *)self writeFileHeaders:fileCopy];
  }
}

- (void)writeFileHeaders:(id)headers
{
  headersCopy = headers;
  v4 = [NSArray arrayWithObjects:@"DNSResolutionTime", @"ConectionEstablishmentTime", @"TCPConnectionTime", @"SecureConnectionTime", @"RequestTime", @"ResponseTime", @"RequestBytesSent", @"ResponseBytesReceived", 0];
  v5 = objc_alloc_init(NSMutableString);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"%@, ", *(*(&v12 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\n"];
  v11 = [v5 dataUsingEncoding:4];
  [headersCopy writeData:v11];
}

@end