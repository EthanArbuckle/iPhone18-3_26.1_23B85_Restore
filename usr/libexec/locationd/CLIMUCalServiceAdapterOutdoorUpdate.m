@interface CLIMUCalServiceAdapterOutdoorUpdate
- (CLIMUCalServiceAdapterOutdoorUpdate)initWithController:(id)a3;
- (void)onOutdoorUpdate:(id)a3;
@end

@implementation CLIMUCalServiceAdapterOutdoorUpdate

- (CLIMUCalServiceAdapterOutdoorUpdate)initWithController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLIMUCalServiceAdapterOutdoorUpdate;
  result = [(CLIMUCalServiceAdapterOutdoorUpdate *)&v5 init];
  if (result)
  {
    result->_adaptee = a3;
    result->_valid = a3 != 0;
  }

  return result;
}

- (void)onOutdoorUpdate:(id)a3
{
  adaptee = self->_adaptee;
  if (adaptee)
  {
    if (self->_valid)
    {
      (*(a3 + 2))(v4, a3, a2);
      [(CLIMUCalService *)adaptee handleOutdoorServiceNotification:v4];
    }
  }
}

@end