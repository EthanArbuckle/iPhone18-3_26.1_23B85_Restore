@interface EPSagaOperandString
- (EPSagaOperandString)initWithCoder:(id)a3;
- (EPSagaOperandString)initWithString:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandString

- (EPSagaOperandString)initWithString:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandString *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
  }

  return v7;
}

- (EPSagaOperandString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandString *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandString *)self string];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end