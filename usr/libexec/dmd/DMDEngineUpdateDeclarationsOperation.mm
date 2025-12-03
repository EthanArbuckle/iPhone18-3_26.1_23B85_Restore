@interface DMDEngineUpdateDeclarationsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineUpdateDeclarationsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  contextCopy = context;
  request = [(DMDEngineUpdateDeclarationsOperation *)self request];
  organizationIdentifier = [request organizationIdentifier];
  v7 = [DMDDeclarationPayloadMetadata fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:organizationIdentifier];

  v119 = 0;
  v89 = contextCopy;
  v8 = [contextCopy executeFetchRequest:v7 error:&v119];
  v9 = v119;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v116;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v116 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v115 + 1) + 8 * i) setFailed:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v115 objects:v126 count:16];
    }

    while (v12);
  }

  request2 = [(DMDEngineUpdateDeclarationsOperation *)self request];
  removeDeclarations = [request2 removeDeclarations];

  v93 = v10;
  selfCopy = self;
  if ([removeDeclarations count])
  {
    v17 = [removeDeclarations valueForKey:DMFDeclarationPayloadIdentifierKey];
    v18 = +[NSNull null];
    v19 = [NSPredicate predicateWithFormat:@"self != %@", v18];
    v20 = [v17 filteredArrayUsingPredicate:v19];

    request3 = [(DMDEngineUpdateDeclarationsOperation *)self request];
    organizationIdentifier2 = [request3 organizationIdentifier];
    v85 = v20;
    v23 = [DMDDeclarationPayloadMetadata fetchRequestForDeclarationsFromOrganizationWithIdentifier:organizationIdentifier2 withIdentifiers:v20];

    v114 = v9;
    v24 = [v23 execute:&v114];
    v82 = v114;

    if (!v24)
    {
      v72 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_100083F70(v82);
      }

      [(DMDEngineUpdateDeclarationsOperation *)selfCopy setError:v82];
      v32 = v82;
      upsertDeclarations = v20;
      goto LABEL_70;
    }

    v79 = v7;
    v81 = removeDeclarations;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v110 objects:v125 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v111;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v111 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v110 + 1) + 8 * j);
          v31 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v124 = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Marking configuration for removal: %{public}@", buf, 0xCu);
          }

          [v30 setAvailable:0];
        }

        v27 = [v25 countByEnumeratingWithState:&v110 objects:v125 count:16];
      }

      while (v27);
    }

    v7 = v79;
    v32 = v82;
    self = selfCopy;
    v10 = v93;
  }

  else
  {
    v81 = removeDeclarations;
    v32 = v9;
  }

  request4 = [(DMDEngineUpdateDeclarationsOperation *)self request];
  upsertDeclarations = [request4 upsertDeclarations];

  if (![upsertDeclarations count])
  {
    removeDeclarations = v81;
LABEL_65:
    v75 = v32;
    v95 = v32;
    v76 = [v89 save:&v95];
    v32 = v95;

    if (v76)
    {
      [(DMDEngineUpdateDeclarationsOperation *)self setResultObject:0];
    }

    else
    {
      v77 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_1000840FC(v32);
      }

      [(DMDEngineUpdateDeclarationsOperation *)self setError:v32];
    }

    goto LABEL_70;
  }

  request5 = [(DMDEngineUpdateDeclarationsOperation *)self request];
  [request5 organizationIdentifier];
  v37 = v36 = v32;
  v38 = [DMDDeclarationPayloadMetadata fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:v37];

  v109 = v36;
  v78 = v38;
  v39 = [v38 execute:&v109];
  v40 = v109;

  if (v39)
  {
    v86 = upsertDeclarations;
    v80 = v7;
    v94 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v39 count]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v39;
    v41 = [obj countByEnumeratingWithState:&v105 objects:v122 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v106;
      do
      {
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v106 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v105 + 1) + 8 * k);
          identifier = [v45 identifier];
          v47 = [v94 objectForKeyedSubscript:identifier];
          v48 = v47;
          if (v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = objc_opt_new();
          }

          v50 = v49;

          [v50 addObject:v45];
          identifier2 = [v45 identifier];
          [v94 setObject:v50 forKeyedSubscript:identifier2];
        }

        v42 = [obj countByEnumeratingWithState:&v105 objects:v122 count:16];
      }

      while (v42);
    }

    self = selfCopy;
    request6 = [(DMDEngineUpdateDeclarationsOperation *)selfCopy request];
    organizationIdentifier3 = [request6 organizationIdentifier];
    v104 = v40;
    v54 = [DMDDeclarationPayloadMetadata declarationsWithDictionaries:v86 organizationIdentifier:organizationIdentifier3 context:v89 error:&v104];
    v83 = v104;

    v55 = [v54 mutableCopy];
    v88 = v55;
    if (v55)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      allValues = [v55 allValues];
      v92 = [allValues countByEnumeratingWithState:&v100 objects:v121 count:16];
      if (v92)
      {
        v91 = *v101;
        do
        {
          for (m = 0; m != v92; m = m + 1)
          {
            if (*v101 != v91)
            {
              objc_enumerationMutation(allValues);
            }

            v57 = *(*(&v100 + 1) + 8 * m);
            identifier3 = [v57 identifier];
            v59 = [v94 objectForKeyedSubscript:identifier3];

            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v60 = v59;
            v61 = [v60 countByEnumeratingWithState:&v96 objects:v120 count:16];
            if (v61)
            {
              v62 = v61;
              v63 = *v97;
              while (2)
              {
                for (n = 0; n != v62; n = n + 1)
                {
                  if (*v97 != v63)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v65 = *(*(&v96 + 1) + 8 * n);
                  serverHash = [v57 serverHash];
                  serverHash2 = [v65 serverHash];
                  v68 = [serverHash isEqualToString:serverHash2];

                  if (v68)
                  {
                    v69 = DMFConfigurationEngineLog();
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543362;
                      v124 = v57;
                      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Declaration already installed, skipping: %{public}@", buf, 0xCu);
                    }

                    [v89 deleteObject:v57];
                    identifier4 = [v57 identifier];
                    [v88 removeObjectForKey:identifier4];

                    v10 = v93;
                    goto LABEL_51;
                  }

                  [v65 setAvailable:0];
                }

                v62 = [v60 countByEnumeratingWithState:&v96 objects:v120 count:16];
                v10 = v93;
                if (v62)
                {
                  continue;
                }

                break;
              }
            }

LABEL_51:
          }

          v92 = [allValues countByEnumeratingWithState:&v100 objects:v121 count:16];
        }

        while (v92);
      }

      v7 = v80;
      removeDeclarations = v81;
      self = selfCopy;
      upsertDeclarations = v86;
      v32 = v83;
      v71 = v78;
    }

    else
    {
      v74 = DMFConfigurationEngineLog();
      v71 = v78;
      v7 = v80;
      v32 = v83;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_100083FF4(v83);
      }

      [(DMDEngineUpdateDeclarationsOperation *)selfCopy setError:v83];
      removeDeclarations = v81;
      upsertDeclarations = v86;
    }

    if (v88)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v73 = DMFConfigurationEngineLog();
    removeDeclarations = v81;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_100084078(v40);
    }

    [(DMDEngineUpdateDeclarationsOperation *)self setError:v40];
    v32 = v40;
  }

LABEL_70:
}

@end