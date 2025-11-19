@interface MSDS3UploadRequest
- (MSDS3UploadRequest)init;
@end

@implementation MSDS3UploadRequest

- (MSDS3UploadRequest)init
{
  v6.receiver = self;
  v6.super_class = MSDS3UploadRequest;
  v2 = [(MSDS3UploadRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSDS3UploadRequest *)v2 setS3url:0];
    [(MSDS3UploadRequest *)v3 setLogFilePath:0];
    [(MSDS3UploadRequest *)v3 setHttpHeaders:0];
    [(MSDS3UploadRequest *)v3 setRetryAttempts:0];
    v4 = v3;
  }

  return v3;
}

@end