@interface DMDEngineSetDeclarationsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineSetDeclarationsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  contextCopy = context;
  request = [(DMDEngineSetDeclarationsOperation *)self request];
  organizationIdentifier = [request organizationIdentifier];
  v7 = [DMDDeclarationPayloadMetadata fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:organizationIdentifier];

  v64 = 0;
  v52 = contextCopy;
  v8 = [contextCopy executeFetchRequest:v7 error:&v64];
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

  request2 = [(DMDEngineSetDeclarationsOperation *)self request];
  organizationIdentifier2 = [request2 organizationIdentifier];
  v17 = [DMDDeclarationPayloadMetadata fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:organizationIdentifier2];

  v59 = v9;
  v18 = [v17 execute:&v59];
  v19 = v59;

  if (v18)
  {
    v51 = v18;
    request3 = [(DMDEngineSetDeclarationsOperation *)self request];
    declarations = [request3 declarations];
    selfCopy = self;
    request4 = [(DMDEngineSetDeclarationsOperation *)self request];
    organizationIdentifier3 = [request4 organizationIdentifier];
    v58 = v19;
    v24 = [DMDDeclarationPayloadMetadata declarationsWithDictionaries:declarations organizationIdentifier:organizationIdentifier3 context:v52 error:&v58];
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
        request5 = [(DMDEngineSetDeclarationsOperation *)selfCopy request];
        organizationIdentifier4 = [request5 organizationIdentifier];
        *buf = 138543362;
        v67 = organizationIdentifier4;
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
            identifier = [v35 identifier];
            v37 = [v25 objectForKeyedSubscript:identifier];

            serverHash = [v37 serverHash];
            serverHash2 = [v35 serverHash];
            v40 = [serverHash isEqualToString:serverHash2];

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
              identifier2 = [v37 identifier];
              [v25 removeObjectForKey:identifier2];

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
        [(DMDEngineSetDeclarationsOperation *)selfCopy setResultObject:0];
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

        [(DMDEngineSetDeclarationsOperation *)selfCopy setError:v19];
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

      [(DMDEngineSetDeclarationsOperation *)selfCopy setError:v49];
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