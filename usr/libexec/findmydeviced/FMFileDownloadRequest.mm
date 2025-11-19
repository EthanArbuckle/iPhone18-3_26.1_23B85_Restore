@interface FMFileDownloadRequest
- (FMFileDownloadRequest)initWithAsset:(id)a3;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMFileDownloadRequest

- (FMFileDownloadRequest)initWithAsset:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMFileDownloadRequest;
  v5 = [(FMDRequest *)&v8 initWithAccount:0];
  v6 = v5;
  if (v5)
  {
    [(FMFileDownloadRequest *)v5 setAsset:v4];
  }

  return v6;
}

- (id)requestUrl
{
  v2 = [(FMFileDownloadRequest *)self asset];
  v3 = [v2 url];

  return v3;
}

- (id)requestHeaders
{
  v9.receiver = self;
  v9.super_class = FMFileDownloadRequest;
  v3 = [(FMDRequest *)&v9 requestHeaders];
  v4 = [(FMFileDownloadRequest *)self asset];
  v5 = [v4 lastModified];
  [v3 fm_safeSetObject:v5 forKey:@"If-Modified-Since"];

  v6 = [(FMFileDownloadRequest *)self asset];
  v7 = [v6 etag];
  [v3 fm_safeSetObject:v7 forKey:@"If-None-Match"];

  return v3;
}

@end