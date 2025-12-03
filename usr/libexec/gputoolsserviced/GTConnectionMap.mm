@interface GTConnectionMap
- (BOOL)retrieveConnection:(id *)connection forId:(unint64_t)id;
- (BOOL)retrieveId:(unint64_t *)id forConnection:(id)connection;
- (GTConnectionMap)init;
- (unint64_t)remove:(id)remove;
- (void)clear;
- (void)insert:(id)insert;
@end

@implementation GTConnectionMap

- (void)clear
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_idToConnection;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_idToConnection objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 cancel];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_idToConnection removeAllObjects];
}

- (BOOL)retrieveConnection:(id *)connection forId:(unint64_t)id
{
  idToConnection = self->_idToConnection;
  v6 = [NSNumber numberWithUnsignedInteger:id];
  *connection = [(NSMutableDictionary *)idToConnection objectForKeyedSubscript:v6];

  return *connection != 0;
}

- (BOOL)retrieveId:(unint64_t *)id forConnection:(id)connection
{
  v5 = [(NSMutableDictionary *)self->_idToConnection allKeysForObject:connection];
  firstObject = [v5 firstObject];
  *id = [firstObject unsignedIntegerValue];

  LOBYTE(id) = [v5 count] != 0;
  return id;
}

- (unint64_t)remove:(id)remove
{
  v7 = 0;
  [(GTConnectionMap *)self retrieveId:&v7 forConnection:remove];
  idToConnection = self->_idToConnection;
  v5 = [NSNumber numberWithUnsignedInteger:v7];
  [(NSMutableDictionary *)idToConnection removeObjectForKey:v5];

  return v7;
}

- (void)insert:(id)insert
{
  idToConnection = self->_idToConnection;
  nextConnectionId = self->_nextConnectionId;
  insertCopy = insert;
  v7 = [NSNumber numberWithUnsignedInteger:nextConnectionId];
  [(NSMutableDictionary *)idToConnection setObject:insertCopy forKeyedSubscript:v7];

  ++self->_nextConnectionId;
}

- (GTConnectionMap)init
{
  v6.receiver = self;
  v6.super_class = GTConnectionMap;
  v2 = [(GTConnectionMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    idToConnection = v2->_idToConnection;
    v2->_idToConnection = v3;

    v2->_nextConnectionId = 1;
  }

  return v2;
}

@end