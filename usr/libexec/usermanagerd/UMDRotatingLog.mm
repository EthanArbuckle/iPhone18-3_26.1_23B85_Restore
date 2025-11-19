@interface UMDRotatingLog
- (void)dealloc;
@end

@implementation UMDRotatingLog

- (void)dealloc
{
  if (self->_fd != -1)
  {
    v3 = sub_1000013A0(self->_se);
    [v3 closeFileWithDescriptor:self->_fd];

    close(self->_fd);
    self->_fd = -1;
  }

  queue = self->_queue;
  self->_queue = 0;

  se = self->_se;
  self->_se = 0;

  v6.receiver = self;
  v6.super_class = UMDRotatingLog;
  [(UMDRotatingLog *)&v6 dealloc];
}

@end