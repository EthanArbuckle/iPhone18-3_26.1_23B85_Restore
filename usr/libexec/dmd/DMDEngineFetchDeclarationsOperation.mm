@interface DMDEngineFetchDeclarationsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineFetchDeclarationsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  request = [(DMDEngineFetchDeclarationsOperation *)self request];
  payloadIdentifiers = [request payloadIdentifiers];

  if (payloadIdentifiers)
  {
    payloadIdentifiers2 = [request payloadIdentifiers];
    v7 = [NSPredicate predicateWithFormat:@"identifier IN %@", payloadIdentifiers2];
  }

  else
  {
    v7 = 0;
  }

  organizationIdentifier = [request organizationIdentifier];
  v9 = [DMDPayloadMetadata fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:organizationIdentifier matchingPredicate:v7];

  v64 = 0;
  v10 = [v9 execute:&v64];
  v11 = v64;
  v12 = v11;
  if (v10)
  {
    v41 = v11;
    v42 = v9;
    v43 = v7;
    selfCopy = self;
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v40 = v10;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v61;
      v17 = DMFDeclarationPayloadIdentifierKey;
      v18 = DMFDeclarationPayloadTypeKey;
      v53 = DMFDeclarationStatusMessageStateKey;
      v45 = DMFDeclarationPayloadDataKey;
      v46 = DMFDeclarationPayloadTypeKey;
      v49 = v13;
      v50 = request;
      v47 = DMFDeclarationPayloadIdentifierKey;
      v48 = *v61;
      do
      {
        v19 = 0;
        v51 = v15;
        do
        {
          if (*v61 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v54 = v19;
          v20 = *(*(&v60 + 1) + 8 * v19);
          v21 = objc_opt_new();
          identifier = [v20 identifier];
          [v21 setObject:identifier forKeyedSubscript:v17];

          type = [v20 type];
          [v21 setObject:type forKeyedSubscript:v18];

          stateDictionary = [v20 stateDictionary];
          v55 = v21;
          [v21 setObject:stateDictionary forKeyedSubscript:v53];

          if ([request includePayloadContents])
          {
            payload = [v20 payload];
            payloadDictionary = [payload payloadDictionary];
            [v55 setObject:payloadDictionary forKeyedSubscript:v45];
          }

          if ([request includeInternalState])
          {
            v27 = objc_opt_new();
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            descriptiveProperties = [v20 descriptiveProperties];
            v29 = [descriptiveProperties countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v57;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v57 != v31)
                  {
                    objc_enumerationMutation(descriptiveProperties);
                  }

                  v33 = *(*(&v56 + 1) + 8 * i);
                  v34 = [v20 valueForKeyPath:v33];
                  if (v34)
                  {
                    [v27 setObject:v34 forKeyedSubscript:v33];
                  }

                  else
                  {
                    v35 = +[NSNull null];
                    [v27 setObject:v35 forKeyedSubscript:v33];
                  }
                }

                v30 = [descriptiveProperties countByEnumeratingWithState:&v56 objects:v65 count:16];
              }

              while (v30);
            }

            [v55 setObject:v27 forKeyedSubscript:@"Debug"];
            v13 = v49;
            request = v50;
            v17 = v47;
            v16 = v48;
            v15 = v51;
            v18 = v46;
          }

          [v13 addObject:v55];

          v19 = v54 + 1;
        }

        while ((v54 + 1) != v15);
        v15 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v15);
    }

    [v13 sortUsingComparator:&stru_1000CEF98];
    completionHandler = [(DMDEngineFetchDeclarationsOperation *)selfCopy completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(DMDEngineFetchDeclarationsOperation *)selfCopy completionHandler];
      (completionHandler2)[2](completionHandler2, v13, 0);
    }

    [(DMDEngineFetchDeclarationsOperation *)selfCopy setResultObject:0];

    v9 = v42;
    v7 = v43;
    v10 = v40;
    v12 = v41;
  }

  else
  {
    completionHandler3 = [(DMDEngineFetchDeclarationsOperation *)self completionHandler];

    if (completionHandler3)
    {
      completionHandler4 = [(DMDEngineFetchDeclarationsOperation *)self completionHandler];
      (completionHandler4)[2](completionHandler4, 0, v12);
    }

    [(DMDEngineFetchDeclarationsOperation *)self setError:v12];
  }
}

@end