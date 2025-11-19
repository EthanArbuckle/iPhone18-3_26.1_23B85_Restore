@interface RDPruner
- (void)dealloc;
@end

@implementation RDPruner

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 8);
  }

  v3.receiver = self;
  v3.super_class = RDPruner;
  [(RDPruner *)&v3 dealloc];
}

@end