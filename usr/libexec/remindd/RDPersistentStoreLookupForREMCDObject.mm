@interface RDPersistentStoreLookupForREMCDObject
- (NSPersistentStore)persistentStore;
- (id)init:(id)init;
@end

@implementation RDPersistentStoreLookupForREMCDObject

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = RDPersistentStoreLookupForREMCDObject;
  v5 = [(RDPersistentStoreLookupForREMCDObject *)&v9 init];
  if (v5)
  {
    objectID = [initCopy objectID];
    persistentStore = [objectID persistentStore];
    [(RDPersistentStoreLookupForREMCDObject *)v5 setPersistentStore:persistentStore];
  }

  return v5;
}

- (NSPersistentStore)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

@end