@interface RDArchiver
+ (void)initialize;
- (void)dealloc;
@end

@implementation RDArchiver

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_1000719E0 = os_log_create("com.apple.SensorKit", "Archiver");
  }
}

- (void)dealloc
{
  if (self->_valid)
  {
    archive = self->_archive;
    archive_write_free();
    close(self->_fd);
  }

  objc_setProperty_nonatomic(self, a2, 0, 32);
  v4.receiver = self;
  v4.super_class = RDArchiver;
  [(RDArchiver *)&v4 dealloc];
}

@end