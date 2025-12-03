@interface EPSagaOperandDiff
- (EPSagaOperandDiff)initWithCoder:(id)coder;
- (EPSagaOperandDiff)initWithDiff:(id)diff;
- (NSString)description;
@end

@implementation EPSagaOperandDiff

- (EPSagaOperandDiff)initWithDiff:(id)diff
{
  diffCopy = diff;
  v6 = [(EPSagaOperandDiff *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diff, diff);
  }

  return v7;
}

- (EPSagaOperandDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandDiff *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diff"];
    diff = v5->_diff;
    v5->_diff = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  diff = [(EPSagaOperandDiff *)self diff];
  v6 = [NSString stringWithFormat:@"%@: %@", v4, diff];

  return v6;
}

@end