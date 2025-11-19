@interface GTCaptureProgressStatistics
- (GTCaptureProgressStatistics)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureProgressStatistics

- (GTCaptureProgressStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTCaptureProgressStatistics;
  v5 = [(GTCaptureProgressStatistics *)&v8 init];
  if (v5)
  {
    v5->_frameCount = [v4 decodeInt64ForKey:@"frameCount"];
    v5->_frameOther = [v4 decodeInt64ForKey:@"frameOther"];
    v5->_commitCount = [v4 decodeInt64ForKey:@"commitCount"];
    v5->_commitOther = [v4 decodeInt64ForKey:@"commitOther"];
    v5->_resourceCount = [v4 decodeInt64ForKey:@"resourceCount"];
    v5->_resourceDownloaded = [v4 decodeInt64ForKey:@"resourceDownloaded"];
    v5->_GPUDataSize = [v4 decodeInt64ForKey:@"GPUDataSize"];
    v5->_GPUDataDownloaded = [v4 decodeInt64ForKey:@"GPUDataDownloaded"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  frameCount = self->_frameCount;
  v5 = a3;
  [v5 encodeInt64:frameCount forKey:@"frameCount"];
  [v5 encodeInt64:self->_frameOther forKey:@"frameOther"];
  [v5 encodeInt64:self->_commitCount forKey:@"commitCount"];
  [v5 encodeInt64:self->_commitOther forKey:@"commitOther"];
  [v5 encodeInt64:self->_resourceCount forKey:@"resourceCount"];
  [v5 encodeInt64:self->_resourceDownloaded forKey:@"resourceDownloaded"];
  [v5 encodeInt64:self->_GPUDataSize forKey:@"GPUDataSize"];
  [v5 encodeInt64:self->_GPUDataDownloaded forKey:@"GPUDataDownloaded"];
}

@end