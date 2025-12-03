@interface W5PeerDiscoveryRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerDiscoveryRequest:(id)request;
- (W5PeerDiscoveryRequest)initWithConfiguration:(id)configuration uuid:(id)uuid handler:(id)handler;
- (id)description;
- (unint64_t)hash;
@end

@implementation W5PeerDiscoveryRequest

- (W5PeerDiscoveryRequest)initWithConfiguration:(id)configuration uuid:(id)uuid handler:(id)handler
{
  configurationCopy = configuration;
  uuidCopy = uuid;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = W5PeerDiscoveryRequest;
  v12 = [(W5PeerDiscoveryRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeStrong(&v13->_uuid, uuid);
    v14 = objc_retainBlock(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;
  }

  return v13;
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p ", v5, self];

  uuid = [(W5PeerDiscoveryRequest *)self uuid];
  uUIDString = [uuid UUIDString];
  [v3 appendFormat:@"UUID='%@' ", uUIDString];

  configuration = [(W5PeerDiscoveryRequest *)self configuration];
  [v3 appendFormat:@"configuration='%@'", configuration];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(W5PeerDiscoveryRequest *)self isEqualToPeerDiscoveryRequest:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPeerDiscoveryRequest:(id)request
{
  requestCopy = request;
  uuid = [(W5PeerDiscoveryRequest *)self uuid];
  uuid2 = [requestCopy uuid];

  LOBYTE(requestCopy) = [uuid isEqual:uuid2];
  return requestCopy;
}

- (unint64_t)hash
{
  uuid = [(W5PeerDiscoveryRequest *)self uuid];
  v3 = [uuid hash];

  return v3;
}

@end