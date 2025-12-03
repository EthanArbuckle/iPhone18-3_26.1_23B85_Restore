@interface HandoverLearnerState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandoverLearnerState:(id)state;
- (HandoverLearnerState)initWithCoder:(id)coder;
- (HandoverLearnerState)initWithValues:(id)values rssi:(int64_t)rssi;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HandoverLearnerState

- (HandoverLearnerState)initWithValues:(id)values rssi:(int64_t)rssi
{
  v8.receiver = self;
  v8.super_class = HandoverLearnerState;
  v6 = [(HandoverLearnerState *)&v8 init];
  if (v6)
  {
    [(HandoverLearnerState *)v6 setNetworkID:values];
    [(HandoverLearnerState *)v6 setRssi_threshold:rssi > -200];
  }

  return v6;
}

- (HandoverLearnerState)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HandoverLearnerState;
  v4 = [(HandoverLearnerState *)&v6 init];
  if (v4)
  {
    -[HandoverLearnerState setNetworkID:](v4, "setNetworkID:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"networkID"]);
    -[HandoverLearnerState setRssi_threshold:](v4, "setRssi_threshold:", [coder decodeBoolForKey:@"rssi_threshold"]);
  }

  return v4;
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

  return [(HandoverLearnerState *)self isEqualToHandoverLearnerState:equal];
}

- (BOOL)isEqualToHandoverLearnerState:(id)state
{
  rssi_threshold = [(HandoverLearnerState *)self rssi_threshold];
  if (rssi_threshold != [state rssi_threshold])
  {
    return 0;
  }

  networkID = [(HandoverLearnerState *)self networkID];
  networkID2 = [state networkID];
  result = networkID2 == 0;
  if (networkID)
  {
    return networkID2 && -[NSString isEqualToString:](-[HandoverLearnerState networkID](self, "networkID"), "isEqualToString:", [state networkID]);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setNetworkID:{-[HandoverLearnerState networkID](self, "networkID")}];
    [v4 setRssi_threshold:{-[HandoverLearnerState rssi_threshold](self, "rssi_threshold")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[HandoverLearnerState networkID](self forKey:{"networkID"), @"networkID"}];
  rssi_threshold = [(HandoverLearnerState *)self rssi_threshold];

  [coder encodeBool:rssi_threshold forKey:@"rssi_threshold"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HandoverLearnerState;
  [(HandoverLearnerState *)&v3 dealloc];
}

@end