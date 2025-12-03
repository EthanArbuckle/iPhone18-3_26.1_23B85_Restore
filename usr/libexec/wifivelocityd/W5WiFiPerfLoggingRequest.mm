@interface W5WiFiPerfLoggingRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiPerfLoggingRequest:(id)request;
- (W5WiFiPerfLoggingRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation W5WiFiPerfLoggingRequest

- (W5WiFiPerfLoggingRequest)init
{
  v5.receiver = self;
  v5.super_class = W5WiFiPerfLoggingRequest;
  v2 = [(W5WiFiPerfLoggingRequest *)&v5 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v2->_transaction = v3;
  }

  return v2;
}

- (void)dealloc
{
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  self->_transaction = 0;
  v3.receiver = self;
  v3.super_class = W5WiFiPerfLoggingRequest;
  [(W5WiFiPerfLoggingRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  [(NSMutableString *)v3 appendFormat:@"UUID: %@\n", self->_uuid];
  [(NSMutableString *)v3 appendFormat:@"Configuration: %@\n", self->_configuration];
  v4 = [(NSMutableString *)v3 copy];

  return v4;
}

- (BOOL)isEqualToWiFiPerfLoggingRequest:(id)request
{
  uuid = self->_uuid;
  uuid = [request uuid];

  return [(NSUUID *)uuid isEqual:uuid];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiPerfLoggingRequest *)self isEqualToWiFiPerfLoggingRequest:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5WiFiPerfLoggingRequest allocWithZone:?]];
  [(W5WiFiPerfLoggingRequest *)v4 setUuid:self->_uuid];
  [(W5WiFiPerfLoggingRequest *)v4 setConfiguration:self->_configuration];
  [(W5WiFiPerfLoggingRequest *)v4 setReply:self->_reply];
  return v4;
}

@end