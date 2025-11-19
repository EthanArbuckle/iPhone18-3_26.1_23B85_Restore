@interface GKHTTPRequestData
- (GKHTTPRequestData)initWithData:(id)a3 headers:(id)a4;
- (const)bytes;
- (unint64_t)length;
@end

@implementation GKHTTPRequestData

- (GKHTTPRequestData)initWithData:(id)a3 headers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GKHTTPRequestData;
  v9 = [(GKHTTPRequestData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_headers, a4);
  }

  return v10;
}

- (const)bytes
{
  v2 = [(GKHTTPRequestData *)self data];
  v3 = [v2 bytes];

  return v3;
}

- (unint64_t)length
{
  v2 = [(GKHTTPRequestData *)self data];
  v3 = [v2 length];

  return v3;
}

@end