@interface HandoverLearnerState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandoverLearnerState:(id)a3;
- (HandoverLearnerState)initWithCoder:(id)a3;
- (HandoverLearnerState)initWithValues:(id)a3 rssi:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HandoverLearnerState

- (HandoverLearnerState)initWithValues:(id)a3 rssi:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = HandoverLearnerState;
  v6 = [(HandoverLearnerState *)&v8 init];
  if (v6)
  {
    [(HandoverLearnerState *)v6 setNetworkID:a3];
    [(HandoverLearnerState *)v6 setRssi_threshold:a4 > -200];
  }

  return v6;
}

- (HandoverLearnerState)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HandoverLearnerState;
  v4 = [(HandoverLearnerState *)&v6 init];
  if (v4)
  {
    -[HandoverLearnerState setNetworkID:](v4, "setNetworkID:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"networkID"]);
    -[HandoverLearnerState setRssi_threshold:](v4, "setRssi_threshold:", [a3 decodeBoolForKey:@"rssi_threshold"]);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(HandoverLearnerState *)self isEqualToHandoverLearnerState:a3];
}

- (BOOL)isEqualToHandoverLearnerState:(id)a3
{
  v5 = [(HandoverLearnerState *)self rssi_threshold];
  if (v5 != [a3 rssi_threshold])
  {
    return 0;
  }

  v7 = [(HandoverLearnerState *)self networkID];
  v8 = [a3 networkID];
  result = v8 == 0;
  if (v7)
  {
    return v8 && -[NSString isEqualToString:](-[HandoverLearnerState networkID](self, "networkID"), "isEqualToString:", [a3 networkID]);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setNetworkID:{-[HandoverLearnerState networkID](self, "networkID")}];
    [v4 setRssi_threshold:{-[HandoverLearnerState rssi_threshold](self, "rssi_threshold")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[HandoverLearnerState networkID](self forKey:{"networkID"), @"networkID"}];
  v5 = [(HandoverLearnerState *)self rssi_threshold];

  [a3 encodeBool:v5 forKey:@"rssi_threshold"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HandoverLearnerState;
  [(HandoverLearnerState *)&v3 dealloc];
}

@end