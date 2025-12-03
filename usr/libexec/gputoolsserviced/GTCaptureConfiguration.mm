@interface GTCaptureConfiguration
- (GTCaptureConfiguration)init;
- (GTCaptureConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (GTCaptureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTCaptureConfiguration;
  v5 = [(GTCaptureConfiguration *)&v8 init];
  if (v5)
  {
    v5->_enablePresentDownload = [coderCopy decodeBoolForKey:@"enablePresentDownload"];
    v5->_presentDownloadSize = [coderCopy decodeInt32ForKey:@"presentDownloadSize"];
    v5->_enableLogErrors = [coderCopy decodeBoolForKey:@"enableLogErrors"];
    v5->_disableHashResources = [coderCopy decodeBoolForKey:@"disableHashResources"];
    v5->_waitEventTimeout = [coderCopy decodeInt32ForKey:@"waitEventTimeout"];
    v5->_maxDownloadCommandBuffers = [coderCopy decodeInt32ForKey:@"maxDownloadCommandBuffers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  enablePresentDownload = self->_enablePresentDownload;
  coderCopy = coder;
  [coderCopy encodeBool:enablePresentDownload forKey:@"enablePresentDownload"];
  [coderCopy encodeInt32:self->_presentDownloadSize forKey:@"presentDownloadSize"];
  [coderCopy encodeBool:self->_enableLogErrors forKey:@"enableLogErrors"];
  [coderCopy encodeBool:self->_disableHashResources forKey:@"disableHashResources"];
  [coderCopy encodeInt32:self->_waitEventTimeout forKey:@"waitEventTimeout"];
  [coderCopy encodeInt32:self->_maxDownloadCommandBuffers forKey:@"maxDownloadCommandBuffers"];
}

@end