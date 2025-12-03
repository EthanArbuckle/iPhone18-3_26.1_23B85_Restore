@interface EPSagaOperandRoutingSlip
- (EPSagaOperandRoutingSlip)initWithChildRoutingSlip:(id)slip;
- (EPSagaOperandRoutingSlip)initWithCoder:(id)coder;
- (NSString)description;
@end

@implementation EPSagaOperandRoutingSlip

- (EPSagaOperandRoutingSlip)initWithChildRoutingSlip:(id)slip
{
  slipCopy = slip;
  v6 = [(EPSagaOperandRoutingSlip *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childRoutingSlip, slip);
  }

  return v7;
}

- (EPSagaOperandRoutingSlip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandRoutingSlip *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childRoutingSlip"];
    childRoutingSlip = v5->_childRoutingSlip;
    v5->_childRoutingSlip = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  childRoutingSlip = [(EPSagaOperandRoutingSlip *)self childRoutingSlip];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, childRoutingSlip];

  return v6;
}

@end