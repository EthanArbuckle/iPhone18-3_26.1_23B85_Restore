@interface CLVisitNotificationAdapter
- (CLVisitNotificationAdapter)initWithLocationController:(void *)controller;
- (void)dealloc;
- (void)onVisit:(id)visit;
@end

@implementation CLVisitNotificationAdapter

- (CLVisitNotificationAdapter)initWithLocationController:(void *)controller
{
  v7.receiver = self;
  v7.super_class = CLVisitNotificationAdapter;
  v4 = [(CLVisitNotificationAdapter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_locationController = controller;
    [(CLVisitNotificationAdapter *)v4 setValid:1];
  }

  return v5;
}

- (void)onVisit:(id)visit
{
  if (self->_valid)
  {
    sub_10066BBE0(self->_locationController, visit);
  }
}

- (void)dealloc
{
  self->_valid = 0;
  v2.receiver = self;
  v2.super_class = CLVisitNotificationAdapter;
  [(CLVisitNotificationAdapter *)&v2 dealloc];
}

@end