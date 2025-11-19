@interface RDPersistentStoreLookupForREMCDObject
- (NSPersistentStore)persistentStore;
- (id)init:(id)a3;
@end

@implementation RDPersistentStoreLookupForREMCDObject

- (id)init:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RDPersistentStoreLookupForREMCDObject;
  v5 = [(RDPersistentStoreLookupForREMCDObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectID];
    v7 = [v6 persistentStore];
    [(RDPersistentStoreLookupForREMCDObject *)v5 setPersistentStore:v7];
  }

  return v5;
}

- (NSPersistentStore)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

@end