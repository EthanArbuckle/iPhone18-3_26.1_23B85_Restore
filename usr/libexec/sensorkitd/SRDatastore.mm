@interface SRDatastore
+ (void)initialize;
- (void)dealloc;
@end

@implementation SRDatastore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071B48 = os_log_create("com.apple.SensorKit", "Datastore");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 40);
    objc_setProperty_atomic(self, v3, 0, 48);
    objc_setProperty_atomic(self, v4, 0, 56);
  }

  self->_defaults = 0;
  v5.receiver = self;
  v5.super_class = SRDatastore;
  [(SRDatastore *)&v5 dealloc];
}

@end