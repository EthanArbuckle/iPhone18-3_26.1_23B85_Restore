@interface IDSService
- (id)defaultPairedDevice;
- (id)nrg_allDevices;
@end

@implementation IDSService

- (id)nrg_allDevices
{
  v3 = [(IDSService *)self linkedDevicesWithRelationship:1];
  v4 = [(IDSService *)self linkedDevicesWithRelationship:2];
  if (v3 | v4)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + objc_msgSend(v4, "count"));
    v6 = v5;
    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }

    if (v4)
    {
      [v6 addObjectsFromArray:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultPairedDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end