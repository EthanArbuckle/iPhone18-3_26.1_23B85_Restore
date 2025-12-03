@interface CLIMUCalServiceAdapterOutdoorUpdate
- (CLIMUCalServiceAdapterOutdoorUpdate)initWithController:(id)controller;
- (void)onOutdoorUpdate:(id)update;
@end

@implementation CLIMUCalServiceAdapterOutdoorUpdate

- (CLIMUCalServiceAdapterOutdoorUpdate)initWithController:(id)controller
{
  v5.receiver = self;
  v5.super_class = CLIMUCalServiceAdapterOutdoorUpdate;
  result = [(CLIMUCalServiceAdapterOutdoorUpdate *)&v5 init];
  if (result)
  {
    result->_adaptee = controller;
    result->_valid = controller != 0;
  }

  return result;
}

- (void)onOutdoorUpdate:(id)update
{
  adaptee = self->_adaptee;
  if (adaptee)
  {
    if (self->_valid)
    {
      (*(update + 2))(v4, update, a2);
      [(CLIMUCalService *)adaptee handleOutdoorServiceNotification:v4];
    }
  }
}

@end