@interface NRDeviceEndpoint
- (id)description;
@end

@implementation NRDeviceEndpoint

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"NRDeviceEndpoint["];
  v4 = v3;
  if (self->_name)
  {
    [v3 appendFormat:@"name:%@ ", self->_name];
  }

  if (self->_model)
  {
    [v4 appendFormat:@"model:%@ ", self->_model];
  }

  if (self->_serviceName)
  {
    [v4 appendFormat:@"svc:%@", self->_serviceName];
  }

  [v4 appendString:@"]"];

  return v4;
}

@end