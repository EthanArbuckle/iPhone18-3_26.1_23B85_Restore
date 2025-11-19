@interface RDWriter
- (void)dealloc;
@end

@implementation RDWriter

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 8);
  }

  v3.receiver = self;
  v3.super_class = RDWriter;
  [(RDWriter *)&v3 dealloc];
}

@end