@interface CLVisitNotificationAdapter
- (CLVisitNotificationAdapter)initWithLocationController:(void *)a3;
- (void)dealloc;
- (void)onVisit:(id)a3;
@end

@implementation CLVisitNotificationAdapter

- (CLVisitNotificationAdapter)initWithLocationController:(void *)a3
{
  v7.receiver = self;
  v7.super_class = CLVisitNotificationAdapter;
  v4 = [(CLVisitNotificationAdapter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_locationController = a3;
    [(CLVisitNotificationAdapter *)v4 setValid:1];
  }

  return v5;
}

- (void)onVisit:(id)a3
{
  if (self->_valid)
  {
    sub_10066BBE0(self->_locationController, a3);
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