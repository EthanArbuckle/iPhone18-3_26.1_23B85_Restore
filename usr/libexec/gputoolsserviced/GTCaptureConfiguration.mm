@interface GTCaptureConfiguration
- (GTCaptureConfiguration)init;
- (GTCaptureConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureConfiguration

- (GTCaptureConfiguration)init
{
  v6.receiver = self;
  v6.super_class = GTCaptureConfiguration;
  v2 = [(GTCaptureConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 1;
    *(v2 + 5) = 1024;
    v2[10] = 0;
    *(v2 + 12) = 0x2000000005ALL;
    v4 = v2;
  }

  return v3;
}

- (GTCaptureConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTCaptureConfiguration;
  v5 = [(GTCaptureConfiguration *)&v8 init];
  if (v5)
  {
    v5->_enablePresentDownload = [v4 decodeBoolForKey:@"enablePresentDownload"];
    v5->_presentDownloadSize = [v4 decodeInt32ForKey:@"presentDownloadSize"];
    v5->_enableLogErrors = [v4 decodeBoolForKey:@"enableLogErrors"];
    v5->_disableHashResources = [v4 decodeBoolForKey:@"disableHashResources"];
    v5->_waitEventTimeout = [v4 decodeInt32ForKey:@"waitEventTimeout"];
    v5->_maxDownloadCommandBuffers = [v4 decodeInt32ForKey:@"maxDownloadCommandBuffers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  enablePresentDownload = self->_enablePresentDownload;
  v5 = a3;
  [v5 encodeBool:enablePresentDownload forKey:@"enablePresentDownload"];
  [v5 encodeInt32:self->_presentDownloadSize forKey:@"presentDownloadSize"];
  [v5 encodeBool:self->_enableLogErrors forKey:@"enableLogErrors"];
  [v5 encodeBool:self->_disableHashResources forKey:@"disableHashResources"];
  [v5 encodeInt32:self->_waitEventTimeout forKey:@"waitEventTimeout"];
  [v5 encodeInt32:self->_maxDownloadCommandBuffers forKey:@"maxDownloadCommandBuffers"];
}

@end