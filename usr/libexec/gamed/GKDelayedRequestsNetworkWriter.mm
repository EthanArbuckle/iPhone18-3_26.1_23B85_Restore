@interface GKDelayedRequestsNetworkWriter
+ (id)writerWithTransport:(id)transport forBagKey:(id)key;
- (GKDelayedRequestsNetworkWriter)initWithTransport:(id)transport forBagKey:(id)key;
- (void)writeResources:(id)resources handler:(id)handler;
@end

@implementation GKDelayedRequestsNetworkWriter

+ (id)writerWithTransport:(id)transport forBagKey:(id)key
{
  keyCopy = key;
  transportCopy = transport;
  v7 = [[GKDelayedRequestsNetworkWriter alloc] initWithTransport:transportCopy forBagKey:keyCopy];

  return v7;
}

- (GKDelayedRequestsNetworkWriter)initWithTransport:(id)transport forBagKey:(id)key
{
  transportCopy = transport;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = GKDelayedRequestsNetworkWriter;
  v8 = [(GKDelayedRequestsNetworkWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDelayedRequestsNetworkWriter *)v8 setTransport:transportCopy];
    [(GKDelayedRequestsNetworkWriter *)v9 setBagKey:keyCopy];
  }

  return v9;
}

- (void)writeResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  v8 = [resourcesCopy _gkValuesForKeyPath:@"resourceID"];
  if ([v8 count] >= 2)
  {
    v17 = [NSString stringWithFormat:@"%@ is being asked to submit a delayed request for multiple players:%@. This is not currently supported. Bag key: %@", v8, objc_opt_class(), self->_bagKey];
    v18 = [NSException exceptionWithName:NSInvalidArgumentException reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [resourcesCopy _gkResourceWithID:*(*(&v23 + 1) + 8 * i)];
        representedItem = [v13 representedItem];

        bagKey = self->_bagKey;
        transport = self->_transport;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100115480;
        v21[3] = &unk_100361CB8;
        v22 = handlerCopy;
        [(GKDataTransport *)transport postRequest:representedItem forBagKey:bagKey result:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

@end