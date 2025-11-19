@interface SecureElementManager
+ (id)getInstance;
- (SecureElementManager)init;
- (id)getNFManager;
@end

@implementation SecureElementManager

+ (id)getInstance
{
  if (qword_10050CCE8 != -1)
  {
    sub_1003B0564();
  }

  v3 = qword_10050CCE0;

  return v3;
}

- (SecureElementManager)init
{
  v8.receiver = self;
  v8.super_class = SecureElementManager;
  v2 = [(SecureElementManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.seserviced.secureelement", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    [SecureElement setQueueKey:v2->_queue];
  }

  return v2;
}

- (id)getNFManager
{
  nfManager = self->_nfManager;
  if (!nfManager)
  {
    v4 = sub_10005530C(NearFieldManager, self->_queue);
    v5 = self->_nfManager;
    self->_nfManager = v4;

    nfManager = self->_nfManager;
  }

  return nfManager;
}

@end