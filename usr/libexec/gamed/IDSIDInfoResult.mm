@interface IDSIDInfoResult
- (BOOL)hasAnyDeviceSupportCapability:(id)capability;
@end

@implementation IDSIDInfoResult

- (BOOL)hasAnyDeviceSupportCapability:(id)capability
{
  capabilityCopy = capability;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  endpoints = [(IDSIDInfoResult *)self endpoints];
  v6 = [endpoints countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(endpoints);
        }

        capabilities = [*(*(&v12 + 1) + 8 * i) capabilities];
        v10 = [capabilities valueForCapability:capabilityCopy];

        if (v10 == 1)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [endpoints countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end