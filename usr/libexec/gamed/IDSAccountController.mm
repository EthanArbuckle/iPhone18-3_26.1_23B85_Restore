@interface IDSAccountController
- (BOOL)_gkIsReadyForService:(id)service;
@end

@implementation IDSAccountController

- (BOOL)_gkIsReadyForService:(id)service
{
  serviceCopy = service;
  accounts = [(IDSAccountController *)self accounts];
  v6 = [accounts copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        serviceName = [*(*(&v14 + 1) + 8 * i) serviceName];
        v12 = [serviceName isEqualToString:serviceCopy];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end