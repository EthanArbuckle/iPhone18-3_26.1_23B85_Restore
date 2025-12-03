@interface NIExportedObjectForwarder
- (NIExportedObjectForwarder)initWithExportedObject:(id)object;
- (id)exportedObject;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation NIExportedObjectForwarder

- (NIExportedObjectForwarder)initWithExportedObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    sub_1004C2AD8(a2, self);
  }

  v9.receiver = self;
  v9.super_class = NIExportedObjectForwarder;
  v6 = [(NIExportedObjectForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NIExportedObjectForwarder *)v6 setExportedObject:objectCopy];
    [(NIExportedObjectForwarder *)v7 setExportedObjectClass:objc_opt_class()];
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  exportedObjectClass = [(NIExportedObjectForwarder *)self exportedObjectClass];

  return [(objc_class *)exportedObjectClass instanceMethodSignatureForSelector:selector];
}

- (id)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end