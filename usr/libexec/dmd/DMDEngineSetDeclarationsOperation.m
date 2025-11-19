@interface DMDEngineSetDeclarationsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineSetDeclarationsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(DMDEngineSetDeclarationsOperation *)self request];
  v6 = [v5 organizationIdentifier];
  v7 = [DMDDeclarationPayloadMetadata fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:v6];

  v64 = 0;
  v52 = v4;
  v8 = [v4 executeFetchRequest:v7 error:&v64];
  v9 = v64;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v61;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v60 + 1) + 8 * i) setFailed:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v12);
  }

  v15 = [(DMDEngineSetDeclarationsOperation *)self request];
  v16 = [v15 organizationIdentifier];
  v17 = [DMDDeclarationPayloadMetadata fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:v16];

  v59 = v9;
  v18 = [v17 execute:&v59];
  v19 = v59;

  if (v18)
  {
    v51 = v18;
    v20 = [(DMDEngineSetDeclarationsOperation *)self request];
    v21 = [v20 declarations];
    v50 = self;
    v22 = [(DMDEngineSetDeclarationsOperation *)self request];
    v23 = [v22 organizationIdentifier];
    v58 = v19;
    v24 = [DMDDeclarationPayloadMetadata declarationsWithDictionaries:v21 organizationIdentifier:v23 context:v52 error:&v58];
    v49 = v58;

    v25 = [v24 mutableCopy];
    v26 = DMFConfigurationEngineLog();
    v27 = v26;
    if (v25)
    {
      v46 = v17;
      v47 = v10;
      v48 = v7;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = [(DMDEngineSetDeclarationsOperation *)v50 request];
        v29 = [v28 organizationIdentifier];
        *buf = 138543362;
        v67 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Start set declarations for %{public}@", buf, 0xCu);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v30 = v51;
      v31 = [v30 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v55;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v54 + 1) + 8 * j);
            [v35 setAvailable:{0, v46}];
            v36 = [v35 identifier];
            v37 = [v25 objectForKeyedSubscript:v36];

            v38 = [v37 serverHash];
            v39 = [v35 serverHash];
            v40 = [v38 isEqualToString:v39];

            if (v40)
            {
              v41 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v67 = v37;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Declaration already present, skipping: %{public}@", buf, 0xCu);
              }

              [v52 deleteObject:v37];
              v42 = [v37 identifier];
              [v25 removeObjectForKey:v42];

              [v35 setAvailable:1];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v54 objects:v65 count:16];
        }

        while (v32);
      }

      v53 = v49;
      v43 = [v52 save:&v53];
      v19 = v53;

      if (v43)
      {
        [(DMDEngineSetDeclarationsOperation *)v50 setResultObject:0];
        v10 = v47;
        v7 = v48;
      }

      else
      {
        v45 = DMFConfigurationEngineLog();
        v10 = v47;
        v7 = v48;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100083CC8(v19);
        }

        [(DMDEngineSetDeclarationsOperation *)v50 setError:v19];
      }

      v17 = v46;
    }

    else
    {
      v19 = v49;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100083D50(v49);
      }

      [(DMDEngineSetDeclarationsOperation *)v50 setError:v49];
    }

    v18 = v51;
  }

  else
  {
    v44 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100083DD8(v19);
    }

    [(DMDEngineSetDeclarationsOperation *)self setError:v19];
  }
}

@end