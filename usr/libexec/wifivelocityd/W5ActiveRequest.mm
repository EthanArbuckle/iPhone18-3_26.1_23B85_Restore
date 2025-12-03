@interface W5ActiveRequest
- (BOOL)conformsToProtocol:(id)protocol;
- (W5ActiveRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5ActiveRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5ActiveRequest;
  [(W5ActiveRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  [(NSMutableString *)v3 appendFormat:@"UUID: %@\n", [(NSString *)[(NSUUID *)self->_uuid UUIDString] substringToIndex:5]];
  [(NSMutableString *)v3 appendFormat:@"PeerID: %@\n", self->_peerID];
  [(NSMutableString *)v3 appendFormat:@"Type: %@\n", sub_10001CE30(self->_type)];
  if (self->_wantsUpdates)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  [(NSMutableString *)v3 appendFormat:@"Wants Updates: %s\n", v4];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:2];
  [v5 setLocale:{+[NSLocale currentLocale](NSLocale, "currentLocale")}];
  -[NSMutableString appendFormat:](v3, "appendFormat:", @"Timestamp: %@\n", [v5 stringFromDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", self->_timestamp)}]);
  v6 = [(NSMutableString *)v3 copy];

  return v6;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5ActiveRequest;
  if (-[W5ActiveRequest conformsToProtocol:](&v5, "conformsToProtocol:") || ([protocol isEqual:&OBJC_PROTOCOL___NSSecureCoding] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&OBJC_PROTOCOL___NSCopying];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5ActiveRequest allocWithZone:?]];
  [(W5ActiveRequest *)v4 setUuid:self->_uuid];
  [(W5ActiveRequest *)v4 setPeerID:self->_peerID];
  [(W5ActiveRequest *)v4 setType:self->_type];
  [(W5ActiveRequest *)v4 setTimestamp:self->_timestamp];
  [(W5ActiveRequest *)v4 setWantsUpdates:self->_wantsUpdates];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uuid forKey:@"_uuid"];
  [coder encodeObject:self->_peerID forKey:@"_peerID"];
  [coder encodeInteger:self->_type forKey:@"_type"];
  [coder encodeDouble:@"_timestamp" forKey:self->_timestamp];
  wantsUpdates = self->_wantsUpdates;

  [coder encodeBool:wantsUpdates forKey:@"_wantsUpdates"];
}

- (W5ActiveRequest)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = W5ActiveRequest;
  v4 = [(W5ActiveRequest *)&v7 init];
  if (v4)
  {
    v4->_uuid = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_uuid", "copy"}];
    v4->_peerID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_peerID", "copy"}];
    v4->_type = [coder decodeIntegerForKey:@"_type"];
    [coder decodeDoubleForKey:@"_timestamp"];
    v4->_timestamp = v5;
    v4->_wantsUpdates = [coder decodeBoolForKey:@"_wantsUpdates"];
  }

  return v4;
}

@end