@interface GTCaptureResponse
- (GTCaptureResponse)init;
- (GTCaptureResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureResponse

- (GTCaptureResponse)init
{
  v6.receiver = self;
  v6.super_class = GTCaptureResponse;
  v2 = [(GTCaptureResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version.var0.version = 1;
    v4 = v2;
  }

  return v3;
}

- (GTCaptureResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTCaptureResponse;
  v5 = [(GTCaptureResponse *)&v12 init];
  if (v5)
  {
    v5->_version.value = [v4 decodeInt64ForKey:@"version"];
    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInt64:version.value forKey:@"version"];
  [v5 encodeInt64:self->_requestID forKey:@"requestID"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

@end