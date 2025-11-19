@interface EPSagaOperandUUID
- (EPSagaOperandUUID)initWithCoder:(id)a3;
- (EPSagaOperandUUID)initWithUUID:(id)a3;
- (NSString)description;
@end

@implementation EPSagaOperandUUID

- (EPSagaOperandUUID)initWithUUID:(id)a3
{
  v5 = a3;
  v6 = [(EPSagaOperandUUID *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (EPSagaOperandUUID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandUUID *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandUUID *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"%@: %@", v4, v6];

  return v7;
}

@end