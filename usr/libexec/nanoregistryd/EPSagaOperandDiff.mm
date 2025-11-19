@interface EPSagaOperandDiff
- (EPSagaOperandDiff)initWithCoder:(id)a3;
- (EPSagaOperandDiff)initWithDiff:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandDiff

- (EPSagaOperandDiff)initWithDiff:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandDiff *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diff, a3);
  }

  return v7;
}

- (EPSagaOperandDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandDiff *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diff"];
    diff = v5->_diff;
    v5->_diff = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandDiff *)self diff];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end