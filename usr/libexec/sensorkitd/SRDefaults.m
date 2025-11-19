@interface SRDefaults
- (void)dealloc;
@end

@implementation SRDefaults

- (void)dealloc
{
  self->_className = 0;

  self->_exportingClassName = 0;
  v3.receiver = self;
  v3.super_class = SRDefaults;
  [(SRDefaults *)&v3 dealloc];
}

@end