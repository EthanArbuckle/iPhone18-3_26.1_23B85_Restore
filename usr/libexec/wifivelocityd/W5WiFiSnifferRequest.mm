@interface W5WiFiSnifferRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWiFiSnifferRequest:(id)request;
- (W5WiFiSnifferRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation W5WiFiSnifferRequest

- (W5WiFiSnifferRequest)init
{
  v5.receiver = self;
  v5.super_class = W5WiFiSnifferRequest;
  v2 = [(W5WiFiSnifferRequest *)&v5 init];
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
  v3.super_class = W5WiFiSnifferRequest;
  [(W5WiFiSnifferRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  [(NSMutableString *)v3 appendFormat:@"UUID: %@\n", self->_uuid];
  channel = [(W5WiFiChannel *)self->_channel channel];
  channel = self->_channel;
  [(NSMutableString *)v3 appendFormat:@"Channel: %ld (%@)\n", channel, W5DescriptionForChannelWidth()];
  v6 = [(NSMutableString *)v3 copy];

  return v6;
}

- (BOOL)isEqualToWiFiSnifferRequest:(id)request
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

  return [(W5WiFiSnifferRequest *)self isEqualToWiFiSnifferRequest:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5WiFiSnifferRequest allocWithZone:?]];
  [(W5WiFiSnifferRequest *)v4 setUuid:self->_uuid];
  [(W5WiFiSnifferRequest *)v4 setChannel:self->_channel];
  [(W5WiFiSnifferRequest *)v4 setDuration:self->_duration];
  [(W5WiFiSnifferRequest *)v4 setOutputFile:self->_outputFile];
  [(W5WiFiSnifferRequest *)v4 setReply:self->_reply];
  [(W5WiFiSnifferRequest *)v4 setMonitorMode:self->_monitorMode];
  [(W5WiFiSnifferRequest *)v4 setTcpDump:self->_tcpDump];
  [(W5WiFiSnifferRequest *)v4 setSnaplen:self->_snaplen];
  [(W5WiFiSnifferRequest *)v4 setNoAutoStop:self->_noAutoStop];
  [(W5WiFiSnifferRequest *)v4 setRotationInterval:self->_rotationInterval];
  [(W5WiFiSnifferRequest *)v4 setMaxSize:self->_maxSize];
  [(W5WiFiSnifferRequest *)v4 setMaxFiles:self->_maxFiles];
  return v4;
}

@end