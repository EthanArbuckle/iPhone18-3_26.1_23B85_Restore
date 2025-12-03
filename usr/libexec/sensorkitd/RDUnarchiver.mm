@interface RDUnarchiver
+ (void)initialize;
- (void)dealloc;
@end

@implementation RDUnarchiver

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000719C0 = os_log_create("com.apple.SensorKit", "Unarchiver");
  }
}

- (void)dealloc
{
  if (self->_readValid)
  {
    readArchive = self->_readArchive;
    archive_read_free();
  }

  if (self->_writeValid)
  {
    writeArchive = self->_writeArchive;
    archive_write_free();
  }

  self->_outputURL = 0;
  v5.receiver = self;
  v5.super_class = RDUnarchiver;
  [(RDUnarchiver *)&v5 dealloc];
}

@end