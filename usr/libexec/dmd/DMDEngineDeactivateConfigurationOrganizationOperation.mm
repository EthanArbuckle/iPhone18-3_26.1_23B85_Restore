@interface DMDEngineDeactivateConfigurationOrganizationOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineDeactivateConfigurationOrganizationOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  contextCopy = context;
  request = [(DMDEngineDeactivateConfigurationOrganizationOperation *)self request];
  organizationIdentifier = [request organizationIdentifier];
  v7 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:organizationIdentifier];

  v28 = 0;
  v8 = [v7 execute:&v28];
  v9 = v28;
  if (v8)
  {
    firstObject = [v8 firstObject];
    v11 = firstObject;
    if (firstObject)
    {
      v22 = contextCopy;
      [firstObject setActive:0];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      payloadMetadatas = [v11 payloadMetadatas];
      v13 = [payloadMetadatas countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(payloadMetadatas);
            }

            [*(*(&v24 + 1) + 8 * i) setAvailable:0];
          }

          v14 = [payloadMetadatas countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v14);
      }

      v23 = v9;
      contextCopy = v22;
      v17 = [v22 save:&v23];
      v18 = v23;

      if (v17)
      {
        [(DMDEngineDeactivateConfigurationOrganizationOperation *)self setResultObject:0];
      }

      else
      {
        [(DMDEngineDeactivateConfigurationOrganizationOperation *)self setError:v18];
      }

      v9 = v18;
    }

    else
    {
      v30 = DMFConfigurationOrganizationIdentifierErrorKey;
      organizationIdentifier2 = [request organizationIdentifier];
      v31 = organizationIdentifier2;
      v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v21 = DMFErrorWithCodeAndUserInfo();
      [(DMDEngineDeactivateConfigurationOrganizationOperation *)self setError:v21];
    }
  }

  else
  {
    [(DMDEngineDeactivateConfigurationOrganizationOperation *)self setError:v9];
  }
}

@end