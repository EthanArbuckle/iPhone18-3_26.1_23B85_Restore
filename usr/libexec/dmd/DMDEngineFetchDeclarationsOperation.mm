@interface DMDEngineFetchDeclarationsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineFetchDeclarationsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = [(DMDEngineFetchDeclarationsOperation *)self request];
  v5 = [v4 payloadIdentifiers];

  if (v5)
  {
    v6 = [v4 payloadIdentifiers];
    v7 = [NSPredicate predicateWithFormat:@"identifier IN %@", v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 organizationIdentifier];
  v9 = [DMDPayloadMetadata fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:v8 matchingPredicate:v7];

  v64 = 0;
  v10 = [v9 execute:&v64];
  v11 = v64;
  v12 = v11;
  if (v10)
  {
    v41 = v11;
    v42 = v9;
    v43 = v7;
    v44 = self;
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
      v50 = v4;
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
          v22 = [v20 identifier];
          [v21 setObject:v22 forKeyedSubscript:v17];

          v23 = [v20 type];
          [v21 setObject:v23 forKeyedSubscript:v18];

          v24 = [v20 stateDictionary];
          v55 = v21;
          [v21 setObject:v24 forKeyedSubscript:v53];

          if ([v4 includePayloadContents])
          {
            v25 = [v20 payload];
            v26 = [v25 payloadDictionary];
            [v55 setObject:v26 forKeyedSubscript:v45];
          }

          if ([v4 includeInternalState])
          {
            v27 = objc_opt_new();
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v28 = [v20 descriptiveProperties];
            v29 = [v28 countByEnumeratingWithState:&v56 objects:v65 count:16];
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
                    objc_enumerationMutation(v28);
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

                v30 = [v28 countByEnumeratingWithState:&v56 objects:v65 count:16];
              }

              while (v30);
            }

            [v55 setObject:v27 forKeyedSubscript:@"Debug"];
            v13 = v49;
            v4 = v50;
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
    v36 = [(DMDEngineFetchDeclarationsOperation *)v44 completionHandler];

    if (v36)
    {
      v37 = [(DMDEngineFetchDeclarationsOperation *)v44 completionHandler];
      (v37)[2](v37, v13, 0);
    }

    [(DMDEngineFetchDeclarationsOperation *)v44 setResultObject:0];

    v9 = v42;
    v7 = v43;
    v10 = v40;
    v12 = v41;
  }

  else
  {
    v38 = [(DMDEngineFetchDeclarationsOperation *)self completionHandler];

    if (v38)
    {
      v39 = [(DMDEngineFetchDeclarationsOperation *)self completionHandler];
      (v39)[2](v39, 0, v12);
    }

    [(DMDEngineFetchDeclarationsOperation *)self setError:v12];
  }
}

@end