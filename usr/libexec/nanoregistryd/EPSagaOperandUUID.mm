@interface EPSagaOperandUUID
- (EPSagaOperandUUID)initWithCoder:(id)coder;
- (EPSagaOperandUUID)initWithUUID:(id)d;
- (NSString)description;
@end

@implementation EPSagaOperandUUID

- (EPSagaOperandUUID)initWithUUID:(id)d
{
  dCopy = d;
  v6 = [(EPSagaOperandUUID *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (EPSagaOperandUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandUUID *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(EPSagaOperandUUID *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [NSString stringWithFormat:@"%@: %@", v4, uUIDString];

  return v7;
}

@end