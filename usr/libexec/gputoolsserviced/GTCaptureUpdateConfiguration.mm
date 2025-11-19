@interface GTCaptureUpdateConfiguration
- (GTCaptureUpdateConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureUpdateConfiguration

- (GTCaptureUpdateConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTCaptureUpdateConfiguration;
  v5 = [(GTCaptureRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTCaptureUpdateConfiguration;
  v4 = a3;
  [(GTCaptureRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

@end