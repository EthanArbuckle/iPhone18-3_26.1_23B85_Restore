@interface EPSagaOperandNumber
- (EPSagaOperandNumber)initWithCoder:(id)coder;
- (EPSagaOperandNumber)initWithNumber:(id)number;
- (NSString)description;
@end

@implementation EPSagaOperandNumber

- (EPSagaOperandNumber)initWithNumber:(id)number
{
  numberCopy = number;
  v6 = [(EPSagaOperandNumber *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_number, number);
  }

  return v7;
}

- (EPSagaOperandNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandNumber *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  number = [(EPSagaOperandNumber *)self number];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, number];

  return v6;
}

@end