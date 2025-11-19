@interface CBWHBAggregateDevice
- (id)description;
@end

@implementation CBWHBAggregateDevice

- (id)description
{
  v3 = self->_deviceControllerMap;
  v4 = self->_latestDevice;
  v23 = 0;
  v5 = [objc_opt_class() description];
  v18 = [(NSMutableDictionary *)v3 count];
  NSAppendPrintF_safe();
  v6 = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSMutableDictionary *)v3 allKeys:v5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = " [";
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v16 = v11;
        v17 = *(*(&v19 + 1) + 8 * v12);
        NSAppendPrintF_safe();
        v6 = v13;

        v12 = v12 + 1;
        v11 = ", ";
        v13 = v6;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:{16, v16, v17}];
      v11 = ", ";
    }

    while (v9);

    NSAppendPrintF_safe();
    v7 = v6;
    v6 = v6;
  }

  v14 = v6;
  return v6;
}

@end