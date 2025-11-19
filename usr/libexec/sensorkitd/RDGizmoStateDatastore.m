@interface RDGizmoStateDatastore
- (void)dealloc;
@end

@implementation RDGizmoStateDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDGizmoStateDatastore;
  [(RDGizmoStateDatastore *)&v3 dealloc];
}

@end