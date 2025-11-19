@interface GTConnectionMap
- (BOOL)retrieveConnection:(id *)a3 forId:(unint64_t)a4;
- (BOOL)retrieveId:(unint64_t *)a3 forConnection:(id)a4;
- (GTConnectionMap)init;
- (unint64_t)remove:(id)a3;
- (void)clear;
- (void)insert:(id)a3;
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

- (BOOL)retrieveConnection:(id *)a3 forId:(unint64_t)a4
{
  idToConnection = self->_idToConnection;
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  *a3 = [(NSMutableDictionary *)idToConnection objectForKeyedSubscript:v6];

  return *a3 != 0;
}

- (BOOL)retrieveId:(unint64_t *)a3 forConnection:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_idToConnection allKeysForObject:a4];
  v6 = [v5 firstObject];
  *a3 = [v6 unsignedIntegerValue];

  LOBYTE(a3) = [v5 count] != 0;
  return a3;
}

- (unint64_t)remove:(id)a3
{
  v7 = 0;
  [(GTConnectionMap *)self retrieveId:&v7 forConnection:a3];
  idToConnection = self->_idToConnection;
  v5 = [NSNumber numberWithUnsignedInteger:v7];
  [(NSMutableDictionary *)idToConnection removeObjectForKey:v5];

  return v7;
}

- (void)insert:(id)a3
{
  idToConnection = self->_idToConnection;
  nextConnectionId = self->_nextConnectionId;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedInteger:nextConnectionId];
  [(NSMutableDictionary *)idToConnection setObject:v6 forKeyedSubscript:v7];

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