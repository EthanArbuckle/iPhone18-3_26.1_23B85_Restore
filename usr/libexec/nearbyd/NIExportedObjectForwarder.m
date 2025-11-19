@interface NIExportedObjectForwarder
- (NIExportedObjectForwarder)initWithExportedObject:(id)a3;
- (id)exportedObject;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation NIExportedObjectForwarder

- (NIExportedObjectForwarder)initWithExportedObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1004C2AD8(a2, self);
  }

  v9.receiver = self;
  v9.super_class = NIExportedObjectForwarder;
  v6 = [(NIExportedObjectForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(NIExportedObjectForwarder *)v6 setExportedObject:v5];
    [(NIExportedObjectForwarder *)v7 setExportedObjectClass:objc_opt_class()];
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(NIExportedObjectForwarder *)self exportedObjectClass];

  return [(objc_class *)v4 instanceMethodSignatureForSelector:a3];
}

- (id)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end