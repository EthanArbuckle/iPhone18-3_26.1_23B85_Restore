@interface EPSagaOperandPairingReport
- (EPSagaOperandPairingReport)initWithCoder:(id)a3;
- (EPSagaOperandPairingReport)initWithPairingReport:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandPairingReport

- (EPSagaOperandPairingReport)initWithPairingReport:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandPairingReport *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingReport, a3);
  }

  return v7;
}

- (EPSagaOperandPairingReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandPairingReport *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingReport"];
    pairingReport = v5->_pairingReport;
    v5->_pairingReport = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandPairingReport *)self pairingReport];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end