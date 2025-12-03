@interface EPSagaOperandString
- (EPSagaOperandString)initWithCoder:(id)coder;
- (EPSagaOperandString)initWithString:(id)string;
- (NSString)description;
@end

@implementation EPSagaOperandString

- (EPSagaOperandString)initWithString:(id)string
{
  stringCopy = string;
  v6 = [(EPSagaOperandString *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

- (EPSagaOperandString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandString *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  string = [(EPSagaOperandString *)self string];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, string];

  return v6;
}

@end