@interface GTCaptureDescriptor
- (GTCaptureDescriptor)initWithCoder:(id)a3;
- (GTCaptureDescriptor)initWithRequestID:(unint64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureDescriptor

- (GTCaptureDescriptor)initWithRequestID:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = GTCaptureDescriptor;
  v3 = [(GTCaptureRequest *)&v6 initWithRequestID:a3];
  v4 = v3;
  if (v3)
  {
    v3->_sessionID = [(GTCaptureRequest *)v3 requestID];
  }

  return v4;
}

- (GTCaptureDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTCaptureDescriptor;
  v5 = [(GTCaptureRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_sessionID = [v4 decodeInt64ForKey:@"sessionID"];
    v5->_triggerHitsToStart = [v4 decodeInt64ForKey:@"triggerHitsToStart"];
    v5->_triggerHitsToEnd = [v4 decodeInt64ForKey:@"triggerHitsToEnd"];
    v5->_suspendAfterCapture = [v4 decodeBoolForKey:@"suspendAfterCapture"];
    v5->_ignoreUnusedResources = [v4 decodeBoolForKey:@"ignoreUnusedResources"];
    v5->_isToolsCapture = [v4 decodeBoolForKey:@"isToolsCapture"];
    v5->_includeBacktrace = [v4 decodeBoolForKey:@"includeBacktrace"];
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v6 = [v4 decodeObjectForKey:@"outputURL"];
    outputURL = v5->_outputURL;
    v5->_outputURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionID = self->_sessionID;
  v5 = a3;
  [v5 encodeInt64:sessionID forKey:@"sessionID"];
  [v5 encodeInt64:self->_triggerHitsToStart forKey:@"triggerHitsToStart"];
  [v5 encodeInt64:self->_triggerHitsToEnd forKey:@"triggerHitsToEnd"];
  [v5 encodeBool:self->_suspendAfterCapture forKey:@"suspendAfterCapture"];
  [v5 encodeBool:self->_ignoreUnusedResources forKey:@"ignoreUnusedResources"];
  [v5 encodeBool:self->_isToolsCapture forKey:@"isToolsCapture"];
  [v5 encodeBool:self->_includeBacktrace forKey:@"includeBacktrace"];
  [v5 encodeInt64:self->_streamRef forKey:@"streamRef"];
  [v5 encodeObject:self->_outputURL forKey:@"outputURL"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = GTCaptureDescriptor;
  v3 = [(GTCaptureDescriptor *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@\n    sessionID: %llu", v3, self->_sessionID];

  return v4;
}

@end