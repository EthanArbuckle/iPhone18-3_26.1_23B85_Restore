@interface GTCaptureProgressStatistics
- (GTCaptureProgressStatistics)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureProgressStatistics

- (GTCaptureProgressStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTCaptureProgressStatistics;
  v5 = [(GTCaptureProgressStatistics *)&v8 init];
  if (v5)
  {
    v5->_frameCount = [coderCopy decodeInt64ForKey:@"frameCount"];
    v5->_frameOther = [coderCopy decodeInt64ForKey:@"frameOther"];
    v5->_commitCount = [coderCopy decodeInt64ForKey:@"commitCount"];
    v5->_commitOther = [coderCopy decodeInt64ForKey:@"commitOther"];
    v5->_resourceCount = [coderCopy decodeInt64ForKey:@"resourceCount"];
    v5->_resourceDownloaded = [coderCopy decodeInt64ForKey:@"resourceDownloaded"];
    v5->_GPUDataSize = [coderCopy decodeInt64ForKey:@"GPUDataSize"];
    v5->_GPUDataDownloaded = [coderCopy decodeInt64ForKey:@"GPUDataDownloaded"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  frameCount = self->_frameCount;
  coderCopy = coder;
  [coderCopy encodeInt64:frameCount forKey:@"frameCount"];
  [coderCopy encodeInt64:self->_frameOther forKey:@"frameOther"];
  [coderCopy encodeInt64:self->_commitCount forKey:@"commitCount"];
  [coderCopy encodeInt64:self->_commitOther forKey:@"commitOther"];
  [coderCopy encodeInt64:self->_resourceCount forKey:@"resourceCount"];
  [coderCopy encodeInt64:self->_resourceDownloaded forKey:@"resourceDownloaded"];
  [coderCopy encodeInt64:self->_GPUDataSize forKey:@"GPUDataSize"];
  [coderCopy encodeInt64:self->_GPUDataDownloaded forKey:@"GPUDataDownloaded"];
}

@end