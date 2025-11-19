@interface RDReader
- (void)dealloc;
@end

@implementation RDReader

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 8);
  }

  v3.receiver = self;
  v3.super_class = RDReader;
  [(RDReader *)&v3 dealloc];
}

@end