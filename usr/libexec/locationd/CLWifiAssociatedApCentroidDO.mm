@interface CLWifiAssociatedApCentroidDO
- (void)dealloc;
@end

@implementation CLWifiAssociatedApCentroidDO

- (void)dealloc
{
  self->_mac = 0;

  self->_loiType = 0;
  v3.receiver = self;
  v3.super_class = CLWifiAssociatedApCentroidDO;
  [(CLWifiAssociatedApCentroidDO *)&v3 dealloc];
}

@end