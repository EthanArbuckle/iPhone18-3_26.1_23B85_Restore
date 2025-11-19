@interface HAPSuspendedAccessory
- (HAPSuspendedAccessory)initWithName:(id)a3 identifier:(id)a4 type:(unint64_t)a5 queue:(id)a6;
- (id)description;
- (void)wakeWithCompletion:(id)a3;
@end

@implementation HAPSuspendedAccessory

- (HAPSuspendedAccessory)initWithName:(id)a3 identifier:(id)a4 type:(unint64_t)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HAPSuspendedAccessory;
  v14 = [(HAPSuspendedAccessory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_identifier, a4);
    v15->_type = a5;
    objc_storeStrong(&v15->_queue, a6);
  }

  return v15;
}

- (void)wakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)description
{
  v3 = [(HAPSuspendedAccessory *)self identifier];
  v4 = [(HAPSuspendedAccessory *)self name];
  v5 = [NSNumber numberWithUnsignedInteger:[(HAPSuspendedAccessory *)self type]];
  v6 = [NSString stringWithFormat:@"<AccyID: %@, name: %@, suspended type: '%@'>", v3, v4, v5];

  return v6;
}

@end