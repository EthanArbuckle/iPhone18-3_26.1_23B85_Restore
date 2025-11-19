@interface IDSService
- (id)nr_defaultPairedDeviceIDIncludingTinkerDevices;
- (id)nr_mineTinkerDevices;
@end

@implementation IDSService

- (id)nr_mineTinkerDevices
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

- (id)nr_defaultPairedDeviceIDIncludingTinkerDevices
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(IDSService *)self nr_mineTinkerDevices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v3 = IDSCopyIDForDevice();
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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