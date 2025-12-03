@interface HAPSuspendedAccessory
- (HAPSuspendedAccessory)initWithName:(id)name identifier:(id)identifier type:(unint64_t)type queue:(id)queue;
- (id)description;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation HAPSuspendedAccessory

- (HAPSuspendedAccessory)initWithName:(id)name identifier:(id)identifier type:(unint64_t)type queue:(id)queue
{
  nameCopy = name;
  identifierCopy = identifier;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HAPSuspendedAccessory;
  v14 = [(HAPSuspendedAccessory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_identifier, identifier);
    v15->_type = type;
    objc_storeStrong(&v15->_queue, queue);
  }

  return v15;
}

- (void)wakeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)description
{
  identifier = [(HAPSuspendedAccessory *)self identifier];
  name = [(HAPSuspendedAccessory *)self name];
  v5 = [NSNumber numberWithUnsignedInteger:[(HAPSuspendedAccessory *)self type]];
  v6 = [NSString stringWithFormat:@"<AccyID: %@, name: %@, suspended type: '%@'>", identifier, name, v5];

  return v6;
}

@end