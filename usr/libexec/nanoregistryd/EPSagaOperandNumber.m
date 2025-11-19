@interface EPSagaOperandNumber
- (EPSagaOperandNumber)initWithCoder:(id)a3;
- (EPSagaOperandNumber)initWithNumber:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandNumber

- (EPSagaOperandNumber)initWithNumber:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandNumber *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_number, a3);
  }

  return v7;
}

- (EPSagaOperandNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandNumber *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandNumber *)self number];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end