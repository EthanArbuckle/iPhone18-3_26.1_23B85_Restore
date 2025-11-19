@interface EPSagaOperandRoutingSlip
- (EPSagaOperandRoutingSlip)initWithChildRoutingSlip:(id)a3;
- (EPSagaOperandRoutingSlip)initWithCoder:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandRoutingSlip

- (EPSagaOperandRoutingSlip)initWithChildRoutingSlip:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandRoutingSlip *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childRoutingSlip, a3);
  }

  return v7;
}

- (EPSagaOperandRoutingSlip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandRoutingSlip *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childRoutingSlip"];
    childRoutingSlip = v5->_childRoutingSlip;
    v5->_childRoutingSlip = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandRoutingSlip *)self childRoutingSlip];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end