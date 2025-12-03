@interface EPSagaOperandPairingReport
- (EPSagaOperandPairingReport)initWithCoder:(id)coder;
- (EPSagaOperandPairingReport)initWithPairingReport:(id)report;
- (NSString)description;
@end

@implementation EPSagaOperandPairingReport

- (EPSagaOperandPairingReport)initWithPairingReport:(id)report
{
  reportCopy = report;
  v6 = [(EPSagaOperandPairingReport *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingReport, report);
  }

  return v7;
}

- (EPSagaOperandPairingReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandPairingReport *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingReport"];
    pairingReport = v5->_pairingReport;
    v5->_pairingReport = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  pairingReport = [(EPSagaOperandPairingReport *)self pairingReport];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, pairingReport];

  return v6;
}

@end