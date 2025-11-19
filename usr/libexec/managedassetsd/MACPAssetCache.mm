@interface MACPAssetCache
- (BOOL)ensureStoreExist:(id *)a3;
- (MAKVStore)store;
- (id)_createStore:(id *)a3;
@end

@implementation MACPAssetCache

- (id)_createStore:(id *)a3
{
  v5 = [(MAStorage *)self->_storage dbInClassC];
  if (v5)
  {
    v6 = [(MACPAssetCache *)self missingField];
    v7 = v6 != 0;

    v23 = v7;
    name = self->_name;
    v9 = [(MACPAssetCache *)self storeFields];
    v10 = [(MACPAssetCache *)self missingField];
    v22 = 0;
    v11 = [v5 upgradeTable:name fields:v9 attributes:0 missingNewColumn:v10 hasDeletedColumn:0 migrateData:&v23 error:&v22];
    v12 = v22;

    if (v11)
    {
      v13 = [MAKVStore alloc];
      v14 = self->_name;
      v21 = v12;
      v15 = [(MAKVStore *)v13 initWithName:v14 identifier:v14 profile:0 db:v5 attributes:0 error:&v21];
      v16 = v21;

      v12 = v16;
      if (v15)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v19 = self->_name;
    v12 = createManagedAssetError();
  }

  if (!v12)
  {
    v20 = self->_name;
    v12 = createManagedAssetError();
  }

  v17 = v12;
  v15 = 0;
  *a3 = v12;
  v16 = v12;
LABEL_9:

  return v15;
}

- (BOOL)ensureStoreExist:(id *)a3
{
  if (self->_store)
  {
    return 1;
  }

  v5 = [(MACPAssetCache *)self _createStore:a3];
  store = self->_store;
  self->_store = v5;

  return self->_store != 0;
}

- (MAKVStore)store
{
  store = self->_store;
  if (!store)
  {
    v8 = 0;
    v4 = [(MACPAssetCache *)self _createStore:&v8];
    v5 = v8;
    v6 = self->_store;
    self->_store = v4;

    store = self->_store;
  }

  return store;
}

@end