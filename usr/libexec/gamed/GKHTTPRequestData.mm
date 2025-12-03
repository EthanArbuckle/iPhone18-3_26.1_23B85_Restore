@interface GKHTTPRequestData
- (GKHTTPRequestData)initWithData:(id)data headers:(id)headers;
- (const)bytes;
- (unint64_t)length;
@end

@implementation GKHTTPRequestData

- (GKHTTPRequestData)initWithData:(id)data headers:(id)headers
{
  dataCopy = data;
  headersCopy = headers;
  v12.receiver = self;
  v12.super_class = GKHTTPRequestData;
  v9 = [(GKHTTPRequestData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_headers, headers);
  }

  return v10;
}

- (const)bytes
{
  data = [(GKHTTPRequestData *)self data];
  bytes = [data bytes];

  return bytes;
}

- (unint64_t)length
{
  data = [(GKHTTPRequestData *)self data];
  v3 = [data length];

  return v3;
}

@end