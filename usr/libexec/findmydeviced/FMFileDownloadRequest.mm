@interface FMFileDownloadRequest
- (FMFileDownloadRequest)initWithAsset:(id)asset;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMFileDownloadRequest

- (FMFileDownloadRequest)initWithAsset:(id)asset
{
  assetCopy = asset;
  v8.receiver = self;
  v8.super_class = FMFileDownloadRequest;
  v5 = [(FMDRequest *)&v8 initWithAccount:0];
  v6 = v5;
  if (v5)
  {
    [(FMFileDownloadRequest *)v5 setAsset:assetCopy];
  }

  return v6;
}

- (id)requestUrl
{
  asset = [(FMFileDownloadRequest *)self asset];
  v3 = [asset url];

  return v3;
}

- (id)requestHeaders
{
  v9.receiver = self;
  v9.super_class = FMFileDownloadRequest;
  requestHeaders = [(FMDRequest *)&v9 requestHeaders];
  asset = [(FMFileDownloadRequest *)self asset];
  lastModified = [asset lastModified];
  [requestHeaders fm_safeSetObject:lastModified forKey:@"If-Modified-Since"];

  asset2 = [(FMFileDownloadRequest *)self asset];
  etag = [asset2 etag];
  [requestHeaders fm_safeSetObject:etag forKey:@"If-None-Match"];

  return requestHeaders;
}

@end