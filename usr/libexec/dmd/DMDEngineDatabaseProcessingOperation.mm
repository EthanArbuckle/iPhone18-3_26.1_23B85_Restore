@interface DMDEngineDatabaseProcessingOperation
- (BOOL)preprocessDatabaseInContext:(id)a3 forOrganization:(id)a4 error:(id *)a5;
- (BOOL)updateActiveRestrictionsInContext:(id)a3 error:(id *)a4;
- (DMDEngineDatabaseProcessingOperationDelegate)delegate;
- (id)processCommandPayloadsInContext:(id)a3 forOrganization:(id)a4 enqueuedOperations:(id)a5 assetResolver:(id)a6 error:(id *)a7;
- (id)processDeclarationPayloadsInContext:(id)a3 forOrganization:(id)a4 enqueuedOperations:(id)a5 assetResolver:(id)a6 error:(id *)a7;
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineDatabaseProcessingOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[DMDConfigurationOrganization fetchRequest];
  v57 = 0;
  v7 = [v6 execute:&v57];
  v8 = v57;
  if (!v7)
  {
    v39 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100083178();
    }

    goto LABEL_36;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v46 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v46)
  {
    v47 = *v54;
    v10 = &selRef_arbitratePolicyForPrioritizedPolicies_;
    v11 = &selRef_arbitratePolicyForPrioritizedPolicies_;
    *&v9 = 138412290;
    v41 = v9;
    v48 = v4;
    v42 = v7;
    v43 = v6;
    while (2)
    {
      v12 = 0;
      v13 = v11[347];
      v45 = v10[348];
      do
      {
        v14 = v5;
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * v12);
        if (([v15 active] & 1) != 0 || (objc_msgSend(v15, "payloadMetadatas"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17))
        {
          v52 = v8;
          v18 = [(DMDEngineDatabaseProcessingOperation *)self preprocessDatabaseInContext:v4 forOrganization:v15 error:&v52];
          v19 = v52;

          if ((v18 & 1) == 0)
          {
            v40 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100083058();
            }

            [(DMDEngineDatabaseProcessingOperation *)self setError:v19];
            goto LABEL_33;
          }

          v20 = [(DMDEngineDatabaseProcessingOperation *)self delegate];
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            v22 = [(DMDEngineDatabaseProcessingOperation *)self delegate];
            v23 = [v15 identifier];
            v24 = [v22 engineProcessingOperation:self enqueuedOperationsForOrganizationWithIdentifier:v23];
            v25 = [NSMutableArray arrayWithArray:v24];

            v4 = v48;
          }

          else
          {
            v25 = 0;
          }

          v26 = [(DMDEngineDatabaseProcessingOperation *)self delegate];
          v27 = objc_opt_respondsToSelector();

          if (v27)
          {
            v28 = [(DMDEngineDatabaseProcessingOperation *)self delegate];
            v29 = [v15 identifier];
            v30 = [v28 engineProcessingOperation:self assetResolverForOrganizationWithIdentifier:v29];
          }

          else
          {
            v30 = 0;
          }

          v51 = v19;
          v31 = [(DMDEngineDatabaseProcessingOperation *)self processCommandPayloadsInContext:v4 forOrganization:v15 enqueuedOperations:v25 assetResolver:v30 error:&v51];
          v32 = v4;
          v33 = v51;

          if (!v31)
          {
            goto LABEL_32;
          }

          v5 = v14;
          [v14 addObjectsFromArray:v31];
          v50 = v33;
          v34 = [(DMDEngineDatabaseProcessingOperation *)self processDeclarationPayloadsInContext:v32 forOrganization:v15 enqueuedOperations:v25 assetResolver:v30 error:&v50];
          v8 = v50;

          if (!v34)
          {
            v33 = v8;
LABEL_32:
            [(DMDEngineDatabaseProcessingOperation *)self setError:v33];

            v19 = v33;
            v4 = v48;
LABEL_33:
            v7 = v42;
            v6 = v43;

            v8 = v19;
            v5 = v14;
            goto LABEL_37;
          }

          [v14 addObjectsFromArray:v34];

          v4 = v48;
        }

        else
        {
          v35 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v41;
            v59 = v15;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Deleting deactivated organization %@", buf, 0xCu);
          }

          [v4 deleteObject:v15];
          v5 = v14;
        }

        v12 = v12 + 1;
      }

      while (v46 != v12);
      v36 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      v7 = v42;
      v6 = v43;
      v10 = &selRef_arbitratePolicyForPrioritizedPolicies_;
      v11 = &selRef_arbitratePolicyForPrioritizedPolicies_;
      v46 = v36;
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v37 = v8;

  v49 = v8;
  v38 = [v4 save:&v49];
  v8 = v49;

  if (!v38)
  {
    v39 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000830EC(v8);
    }

LABEL_36:

    [(DMDEngineDatabaseProcessingOperation *)self setError:v8];
    goto LABEL_37;
  }

  [(DMDEngineDatabaseProcessingOperation *)self setResultObject:v5];
LABEL_37:
}

- (BOOL)preprocessDatabaseInContext:(id)a3 forOrganization:(id)a4 error:(id *)a5
{
  v7 = a3;
  v53 = a4;
  v8 = [v53 identifier];
  v9 = [DMDDeclarationPayloadMetadata fetchRequestForDeclarationsFromOrganizationWithIdentifier:v8];

  v65 = 0;
  v54 = v7;
  v43 = v9;
  v10 = [v7 executeFetchRequest:v9 error:&v65];
  v11 = v65;
  v42 = v10;
  if (v10)
  {
    v64 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v62;
      v44 = *v62;
      do
      {
        v15 = 0;
        v45 = v13;
        do
        {
          if (*v62 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v61 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = v17;
            v49 = [v16 payload];
            v18 = [v49 payloadDictionary];
            v60 = v11;
            v19 = [CEMConfigurationBase declarationForPayload:v18 error:&v60];
            v20 = v60;

            v48 = v19;
            if (v19)
            {
              log = [v16 mutableSetValueForKey:@"outgoingPayloadMetadataReferences"];
              [log removeAllObjects];
              v21 = [v19 assetReferences];
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v51 = v21;
              v22 = [v51 countByEnumeratingWithState:&v56 objects:v67 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v57;
                v47 = v15;
                while (2)
                {
                  v25 = 0;
                  v26 = v20;
                  do
                  {
                    if (*v57 != v24)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v27 = *(*(&v56 + 1) + 8 * v25);
                    v28 = [v53 identifier];
                    v29 = [v27 identifier];
                    v66 = v29;
                    v30 = [NSArray arrayWithObjects:&v66 count:1];
                    v31 = [(DMDDeclarationPayloadMetadata *)DMDAssetPayloadMetadata fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:v28 withIdentifiers:v30];

                    v55 = v26;
                    v32 = [v54 executeFetchRequest:v31 error:&v55];
                    v20 = v55;

                    if (!v32)
                    {
                      v34 = DMFConfigurationEngineLog();
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        v35 = [v27 identifier];
                        v36 = [v20 verboseDescription];
                        *buf = 138543618;
                        v69 = v35;
                        v70 = 2114;
                        v71 = v36;
                        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to fetch asset with identifier (%{public}@): %{public}@", buf, 0x16u);
                      }

                      v15 = v47;
                      goto LABEL_23;
                    }

                    v33 = [v32 firstObject];
                    if (v33)
                    {
                      [log addObject:v33];
                    }

                    v25 = v25 + 1;
                    v26 = v20;
                  }

                  while (v23 != v25);
                  v23 = [v51 countByEnumeratingWithState:&v56 objects:v67 count:16];
                  v15 = v47;
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_23:

              v14 = v44;
              v13 = v45;
            }

            else
            {
              log = DMFConfigurationEngineLog();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                v37 = [v16 identifier];
                v38 = [v20 verboseDescription];
                *buf = 138543618;
                v69 = v37;
                v70 = 2114;
                v71 = v38;
                _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to deserialize configuration engine model: %{public}@", buf, 0x16u);
              }
            }

            v17 = v50;

            v11 = v20;
          }

          objc_autoreleasePoolPop(v17);
          v15 = v15 + 1;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v39 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_10008320C(v11);
    }

    if (a5)
    {
      v40 = v11;
      *a5 = v11;
    }
  }

  return v42 != 0;
}

- (BOOL)updateActiveRestrictionsInContext:(id)a3 error:(id *)a4
{
  v4 = +[DMDConfigurationPayloadMetadata fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanTrue];
  v57[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanFalse];
  v57[1] = v6;
  v7 = [NSArray arrayWithObjects:v57 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  v9 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v56[0] = v9;
  v10 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanFalse];
  v56[1] = v10;
  v11 = [NSPredicate predicateWithFormat:@"SUBQUERY(incomingPayloadMetadataReferences, $ref, ($ref.available == YES) && ($ref.predicatePayloadMetadata.%K.BOOLValue == YES)).@count > 0", DMFDeclarationStatePredicateLastEvaluationValueKey];
  v56[2] = v11;
  v12 = [NSArray arrayWithObjects:v56 count:3];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

  v55[0] = v8;
  v55[1] = v13;
  v14 = [NSArray arrayWithObjects:v55 count:2];
  v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
  [v4 setPredicate:v15];

  v51 = 0;
  v44 = v4;
  v16 = [v4 execute:&v51];
  v17 = v51;
  v18 = v17;
  if (v16)
  {
    v39 = v17;
    v41 = v13;
    v42 = v8;
    v45 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v16;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v48;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v47 + 1) + 8 * i);
          v25 = [v24 type];
          v26 = [v25 substringFromIndex:24];
          v27 = [v24 identifier];
          v28 = [NSString stringWithFormat:@"%@.%@-restrictions", v26, v27];

          [v45 addObject:v28];
        }

        v21 = [v19 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v21);
    }

    v29 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v45;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Active restrictions: %@", buf, 0xCu);
    }

    v30 = +[DMFConfigurationSourceClient activeRestrictionsURL];
    v13 = v41;
    v8 = v42;
    if (v30)
    {
      v31 = [NSPropertyListSerialization dataWithPropertyList:v45 format:200 options:0 error:0];
      v46 = v39;
      v32 = [v31 writeToURL:v30 options:1 error:&v46];
      v18 = v46;

      if (v32)
      {
        if (([v30 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0] & 1) == 0)
        {
          v33 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_100083298();
          }
        }
      }

      else
      {
        v36 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100083298();
        }

        if (a4)
        {
          v37 = v18;
          *a4 = v18;
        }
      }
    }

    else
    {
      v31 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10008332C();
      }

      v32 = 0;
      v18 = v39;
    }

    v16 = v40;
  }

  else
  {
    v34 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000833A0();
    }

    if (a4)
    {
      v35 = v18;
      v32 = 0;
      *a4 = v18;
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (id)processCommandPayloadsInContext:(id)a3 forOrganization:(id)a4 enqueuedOperations:(id)a5 assetResolver:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v119 = a7;
  if (!a7)
  {
    sub_10008343C(a2, self);
  }

  v124 = objc_opt_new();
  v125 = objc_opt_new();
  v126 = objc_opt_new();
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v155 objects:v170 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v156;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v156 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v155 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v21 payloadMetadataObjectID];
          [v125 setObject:v21 forKeyedSubscript:v22];

          v23 = [v21 payloadIdentifier];
          [v126 setObject:v21 forKeyedSubscript:v23];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v155 objects:v170 count:16];
    }

    while (v18);
  }

  v24 = [v14 identifier];
  v25 = [DMDCommandPayloadMetadata fetchRequestForCommandsPendingExecutionFromOrganizationWithIdentifier:v24];

  v26 = [v25 execute:v119];
  v122 = v26;
  if (!v26)
  {
    v47 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000836D4(v119);
    }

    v111 = 0;
    goto LABEL_108;
  }

  v115 = v25;
  v116 = v16;
  v117 = v13;
  v118 = v14;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v151 objects:v169 count:16];
  if (!v27)
  {
    goto LABEL_26;
  }

  v28 = v27;
  v29 = *v152;
  do
  {
    for (j = 0; j != v28; j = j + 1)
    {
      if (*v152 != v29)
      {
        objc_enumerationMutation(v122);
      }

      v31 = *(*(&v151 + 1) + 8 * j);
      v32 = [v31 identifier];
      v33 = [v126 objectForKeyedSubscript:v32];

      if (v33)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_24;
        }

        v34 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v31 identifier];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543618;
          v166 = v35;
          v167 = 2114;
          v168 = v37;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%{public}@: Cancelling enqueued %{public}@ so we can enqueue an execute command operation", buf, 0x16u);
        }

        [(DMDCommandExecuteOperation *)v33 cancel];
      }

      v38 = [DMDCommandExecuteOperation alloc];
      v39 = [(DMDEngineDatabaseOperation *)self database];
      v40 = [v31 objectID];
      v41 = [v31 identifier];
      v33 = [(DMDPayloadActionOperation *)v38 initWithDatabase:v39 payloadMetadataObjectID:v40 payloadIdentifier:v41];

      -[DMDPayloadActionOperation setRequiresNetworkTether:](v33, "setRequiresNetworkTether:", [v31 requiresNetworkTether]);
      -[DMDPayloadActionOperation setRequiresUnlockedKeychain:](v33, "setRequiresUnlockedKeychain:", [v31 requiresUnlockedKeychain]);
      v42 = [(DMDEngineDatabaseProcessingOperation *)self deviceStateProvider];
      [(DMDPayloadActionOperation *)v33 setDeviceStateProvider:v42];

      v43 = [(DMDEngineDatabaseProcessingOperation *)self taskOperationProvider];
      [(DMDPayloadActionOperation *)v33 setTaskOperationProvider:v43];

      [v124 addObject:v33];
      v44 = [v31 objectID];
      [v125 setObject:v33 forKeyedSubscript:v44];

      v45 = [v31 identifier];
      [v126 setObject:v33 forKeyedSubscript:v45];

LABEL_24:
    }

    v28 = [v122 countByEnumeratingWithState:&v151 objects:v169 count:16];
  }

  while (v28);
LABEL_26:
  v14 = v118;
  v46 = [v118 identifier];
  v47 = [DMDCommandPayloadMetadata fetchRequestForCommandsPendingRemovalFromOrganizationWithIdentifier:v46];

  v48 = [v47 execute:v119];
  v121 = v48;
  if (v48)
  {
    v114 = v47;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v49 = [v48 countByEnumeratingWithState:&v147 objects:v164 count:16];
    if (!v49)
    {
      goto LABEL_40;
    }

    v50 = v49;
    v51 = *v148;
    while (1)
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v148 != v51)
        {
          objc_enumerationMutation(v121);
        }

        v53 = *(*(&v147 + 1) + 8 * k);
        v54 = [v53 identifier];
        v55 = [v126 objectForKeyedSubscript:v54];

        if (v55)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_38;
          }

          v56 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = [v53 identifier];
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            *buf = 138543618;
            v166 = v57;
            v167 = 2114;
            v168 = v59;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%{public}@: Cancelling enqueued %{public}@ so we can enqueue an remove command operation", buf, 0x16u);
          }

          [(DMDCommandRemoveOperation *)v55 cancel];
        }

        v60 = [DMDCommandRemoveOperation alloc];
        v61 = [(DMDEngineDatabaseOperation *)self database];
        v62 = [v53 objectID];
        v63 = [v53 identifier];
        v55 = [(DMDPayloadActionOperation *)v60 initWithDatabase:v61 payloadMetadataObjectID:v62 payloadIdentifier:v63];

        -[DMDPayloadActionOperation setRequiresNetworkTether:](v55, "setRequiresNetworkTether:", [v53 requiresNetworkTether]);
        -[DMDPayloadActionOperation setRequiresUnlockedKeychain:](v55, "setRequiresUnlockedKeychain:", [v53 requiresUnlockedKeychain]);
        v64 = [(DMDEngineDatabaseProcessingOperation *)self deviceStateProvider];
        [(DMDPayloadActionOperation *)v55 setDeviceStateProvider:v64];

        v65 = [(DMDEngineDatabaseProcessingOperation *)self taskOperationProvider];
        [(DMDPayloadActionOperation *)v55 setTaskOperationProvider:v65];

        [v124 addObject:v55];
        v66 = [v53 objectID];
        [v125 setObject:v55 forKeyedSubscript:v66];

        v67 = [v53 identifier];
        [v126 setObject:v55 forKeyedSubscript:v67];

LABEL_38:
      }

      v50 = [v121 countByEnumeratingWithState:&v147 objects:v164 count:16];
      if (!v50)
      {
LABEL_40:
        v14 = v118;
        v68 = [v118 identifier];
        v69 = [DMDCommandPayloadMetadata fetchRequestForCommandsPendingDeleteFromOrganizationWithIdentifier:v68];

        v70 = [v69 execute:v119];
        v71 = v70;
        if (v70)
        {
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v72 = [v70 countByEnumeratingWithState:&v143 objects:v163 count:16];
          v16 = v116;
          v13 = v117;
          v47 = v114;
          v25 = v115;
          if (v72)
          {
            v73 = v72;
            v74 = *v144;
            do
            {
              for (m = 0; m != v73; m = m + 1)
              {
                if (*v144 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                [v117 deleteObject:*(*(&v143 + 1) + 8 * m)];
              }

              v73 = [v71 countByEnumeratingWithState:&v143 objects:v163 count:16];
            }

            while (v73);
          }

          v76 = DMFConfigurationEngineLog();
          v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);

          if (v77)
          {
            v120 = v69;
            v78 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              sub_1000834B8();
            }

            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v79 = v122;
            v80 = [v79 countByEnumeratingWithState:&v139 objects:v162 count:16];
            if (v80)
            {
              v81 = v80;
              v82 = *v140;
              do
              {
                for (n = 0; n != v81; n = n + 1)
                {
                  if (*v140 != v82)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v84 = *(*(&v139 + 1) + 8 * n);
                  v85 = DMFConfigurationEngineLog();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v166 = v84;
                    _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }
                }

                v81 = [v79 countByEnumeratingWithState:&v139 objects:v162 count:16];
              }

              while (v81);
            }

            v86 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              sub_1000834EC();
            }

            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v87 = v121;
            v88 = [v87 countByEnumeratingWithState:&v135 objects:v161 count:16];
            if (v88)
            {
              v89 = v88;
              v90 = *v136;
              do
              {
                for (ii = 0; ii != v89; ii = ii + 1)
                {
                  if (*v136 != v90)
                  {
                    objc_enumerationMutation(v87);
                  }

                  v92 = *(*(&v135 + 1) + 8 * ii);
                  v93 = DMFConfigurationEngineLog();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v166 = v92;
                    _os_log_debug_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }
                }

                v89 = [v87 countByEnumeratingWithState:&v135 objects:v161 count:16];
              }

              while (v89);
            }

            v94 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              sub_100083520();
            }

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v95 = v71;
            v96 = [v95 countByEnumeratingWithState:&v131 objects:v160 count:16];
            if (v96)
            {
              v97 = v96;
              v98 = *v132;
              do
              {
                for (jj = 0; jj != v97; jj = jj + 1)
                {
                  if (*v132 != v98)
                  {
                    objc_enumerationMutation(v95);
                  }

                  v100 = *(*(&v131 + 1) + 8 * jj);
                  v101 = DMFConfigurationEngineLog();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v166 = v100;
                    _os_log_debug_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }
                }

                v97 = [v95 countByEnumeratingWithState:&v131 objects:v160 count:16];
              }

              while (v97);
            }

            v102 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              sub_100083554();
            }

            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v103 = v124;
            v104 = [v103 countByEnumeratingWithState:&v127 objects:v159 count:16];
            v13 = v117;
            if (v104)
            {
              v105 = v104;
              v106 = *v128;
              do
              {
                for (kk = 0; kk != v105; kk = kk + 1)
                {
                  if (*v128 != v106)
                  {
                    objc_enumerationMutation(v103);
                  }

                  v108 = *(*(&v127 + 1) + 8 * kk);
                  v109 = DMFConfigurationEngineLog();
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v166 = v108;
                    _os_log_debug_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                  }
                }

                v105 = [v103 countByEnumeratingWithState:&v127 objects:v159 count:16];
              }

              while (v105);
            }

            v110 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
            {
              sub_100083588();
            }

            v14 = v118;
            v69 = v120;
            v25 = v115;
            v16 = v116;
            v47 = v114;
          }

          v111 = v124;
        }

        else
        {
          v112 = DMFConfigurationEngineLog();
          v16 = v116;
          v13 = v117;
          v47 = v114;
          v25 = v115;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            sub_1000835BC(v119);
          }

          v111 = 0;
        }

        goto LABEL_107;
      }
    }
  }

  v69 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    sub_100083648(v119);
  }

  v111 = 0;
  v16 = v116;
  v13 = v117;
  v25 = v115;
LABEL_107:

LABEL_108:

  return v111;
}

- (id)processDeclarationPayloadsInContext:(id)a3 forOrganization:(id)a4 enqueuedOperations:(id)a5 assetResolver:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v234 = a5;
  v248 = a6;
  if (!a7)
  {
    sub_100083760(a2, self);
  }

  v240 = v13;
  v14 = [v13 identifier];
  v15 = [DMDActivationPayloadMetadata fetchRequestForActivationsFromOrganizationWithIdentifier:v14];

  v233 = v15;
  v16 = [v15 execute:a7];
  v232 = v16;
  if (!v16)
  {
    v250 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
    {
      sub_100083A50(a7);
    }

    v223 = 0;
    v224 = v13;
    goto LABEL_206;
  }

  v231 = v12;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v302 objects:v336 count:16];
  v241 = a7;
  if (!v18)
  {
    goto LABEL_54;
  }

  v19 = v18;
  v20 = &CATGetCatalystQueue_ptr;
  v259 = *v303;
  v255 = DMFDeclarationStatePredicateLastEvaluationValueKey;
  v249 = v17;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v303 != v259)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v302 + 1) + 8 * i);
      v23 = v20[310];
      v24 = [v22 payload];
      v25 = [v24 payloadDictionary];
      v26 = [v23 declarationForPayload:v25 error:a7];

      if (!v26)
      {
        v32 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v58 = [v22 identifier];
          v59 = [*a7 verboseDescription];
          *buf = 138543618;
          v323 = v58;
          v324 = 2114;
          v325 = v59;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to parse activation payload (%{public}@): %{public}@", buf, 0x16u);

          v20 = &CATGetCatalystQueue_ptr;
        }

        v33 = [(DMDEngineDatabaseProcessingOperation *)self activationPredicateObserverManager];
        v34 = [v22 uniqueIdentifier];
        [v33 removeActivationPredicateObserverWithUniqueIdentifier:v34];

        [v22 setFailed:1];
        v334 = v255;
        v335 = &__kCFBooleanFalse;
        v35 = &v335;
        v36 = &v334;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 available])
        {
          v27 = [v240 identifier];
          v28 = [DMDConfigurationPayloadMetadata fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:v27];

          v29 = [v28 execute:a7];
          if (v29)
          {
            v332 = v255;
            v333 = &__kCFBooleanTrue;
            v30 = [NSDictionary dictionaryWithObjects:&v333 forKeys:&v332 count:1];
            [v22 setPredicatePayloadMetadata:v30];

            [v22 setInstalled:1];
            v31 = [NSSet setWithArray:v29];
            [v22 setOutgoingPayloadMetadataReferences:v31];

            [v22 updateStateDictionaryIfNeeded];
          }

          else
          {
            v55 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v72 = [v240 identifier];
              v73 = [*v241 verboseDescription];
              *buf = 138543618;
              v323 = v72;
              v324 = 2114;
              v325 = v73;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to fetch available configurations for organization (%{public}@): %{public}@", buf, 0x16u);

              v17 = v249;
              a7 = v241;
            }

            [v22 setFailed:1];
          }

LABEL_51:
          v20 = &CATGetCatalystQueue_ptr;
          goto LABEL_52;
        }

        v330 = v255;
        v331 = &__kCFBooleanFalse;
        v35 = &v331;
        v36 = &v330;
LABEL_28:
        v54 = [NSDictionary dictionaryWithObjects:v35 forKeys:v36 count:1];
        [v22 setPredicatePayloadMetadata:v54];

        [v22 setInstalled:0];
        [v22 updateStateDictionaryIfNeeded];
        goto LABEL_52;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v22 available])
        {
          v52 = [(DMDEngineDatabaseProcessingOperation *)self activationPredicateObserverManager];
          v53 = [v22 uniqueIdentifier];
          [v52 removeActivationPredicateObserverWithUniqueIdentifier:v53];

          v318 = v255;
          v319 = &__kCFBooleanFalse;
          v35 = &v319;
          v36 = &v318;
          goto LABEL_28;
        }

        v37 = v26;
        v38 = [v22 predicatePayloadMetadata];
        v39 = [v38 objectForKeyedSubscript:v255];
        v40 = [v39 BOOLValue];

        v41 = [v37 payloadPredicate];

        if (v41)
        {
          obj = v40;
          v42 = [(DMDEngineDatabaseProcessingOperation *)self activationPredicateObserverManager];
          v43 = v37;
          v44 = [v37 payloadPredicate];
          v45 = [v22 uniqueIdentifier];
          v46 = [v42 addActivationPredicateObserverForPredicate:v44 withUniqueIdentifier:v45];

          if (v46)
          {
            v47 = [v46 evaluatePredicateWithError:a7];
            v48 = v47;
            if (v47)
            {
              obj = [v47 BOOLValue];
              v49 = [v46 metadata];
              goto LABEL_42;
            }

            v62 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v243 = [v22 uniqueIdentifier];
              v74 = [v240 identifier];
              v75 = [*v241 verboseDescription];
              *buf = 138544130;
              v323 = v243;
              v324 = 2114;
              v325 = v74;
              v326 = 2114;
              v327 = v75;
              v76 = v75;
              v328 = 1024;
              v329 = obj;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Failed to evaluate activation predicate with unique identifier %{public}@ for organization (%{public}@): %{public}@ using last predicate evaluation %d", buf, 0x26u);
            }
          }

          else
          {
            v48 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v60 = [v22 uniqueIdentifier];
              v61 = [v240 identifier];
              *buf = 138543874;
              v323 = v60;
              v324 = 2114;
              v325 = v61;
              v326 = 1024;
              LODWORD(v327) = obj;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to create activation predicate observer with unique identifier %{public}@ for organization (%{public}@) using last predicate evaluation %d", buf, 0x1Cu);
            }
          }

          v49 = 0;
LABEL_42:
        }

        else
        {
          v43 = v37;
          v46 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v22 uniqueIdentifier];
            v57 = [v240 identifier];
            *buf = 138543618;
            v323 = v56;
            v324 = 2114;
            v325 = v57;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Activation predicate with unique identifier %{public}@ for organization (%{public}@) is nil", buf, 0x16u);
          }

          v49 = 0;
          obj = 1;
        }

        v63 = [NSMutableArray alloc];
        v64 = [v43 payloadStandardConfigurations];
        v65 = [v63 initWithArray:v64];

        v66 = [v240 identifier];
        v67 = [DMDConfigurationPayloadMetadata fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:v66 payloadIdentifiers:v65];

        v68 = [v67 execute:v241];
        if (v68)
        {
          if (!v49)
          {
            v320 = v255;
            v69 = [NSNumber numberWithBool:obj];
            v321 = v69;
            v49 = [NSDictionary dictionaryWithObjects:&v321 forKeys:&v320 count:1];
          }

          [v22 setPredicatePayloadMetadata:v49];
          [v22 setInstalled:1];
          v70 = [NSSet setWithArray:v68];
          [v22 setOutgoingPayloadMetadataReferences:v70];

          [v22 updateStateDictionaryIfNeeded];
        }

        else
        {
          v71 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            objc = [v240 identifier];
            v242 = [*v241 verboseDescription];
            *buf = 138543618;
            v323 = objc;
            v324 = 2114;
            v325 = v242;
            _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Failed to fetch available configurations for organization (%{public}@): %{public}@", buf, 0x16u);
          }

          [v22 setFailed:1];
        }

        a7 = v241;
        v17 = v249;
        goto LABEL_51;
      }

      v50 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v22 type];
        *buf = 138543362;
        v323 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Unknown activation type: %{public}@", buf, 0xCu);
      }

LABEL_52:
    }

    v19 = [v17 countByEnumeratingWithState:&v302 objects:v336 count:16];
  }

  while (v19);
LABEL_54:

  v12 = v231;
  if ([(DMDEngineDatabaseProcessingOperation *)self updateActiveRestrictionsInContext:v231 error:a7])
  {
    v250 = objc_opt_new();
    v256 = objc_opt_new();
    v244 = objc_opt_new();
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    obja = v234;
    v77 = [obja countByEnumeratingWithState:&v298 objects:v317 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v299;
      do
      {
        for (j = 0; j != v78; j = j + 1)
        {
          if (*v299 != v79)
          {
            objc_enumerationMutation(obja);
          }

          v81 = *(*(&v298 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v82 = [v81 payloadMetadataObjectID];
            [v256 setObject:v81 forKeyedSubscript:v82];

            v83 = [v81 payloadIdentifier];
            [v244 setObject:v81 forKeyedSubscript:v83];
          }
        }

        v78 = [obja countByEnumeratingWithState:&v298 objects:v317 count:16];
      }

      while (v78);
    }

    v84 = [v240 identifier];
    v85 = [DMDConfigurationPayloadMetadata fetchRequestForConfigurationsPendingRemoveFromOrganizationWithIdentifier:v84];

    v86 = [v85 execute:a7];
    v87 = [v86 mutableCopy];

    if (v87)
    {
      v227 = v85;
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
      v229 = v87;
      v260 = [v87 copy];
      v88 = [v260 countByEnumeratingWithState:&v294 objects:v316 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v295;
        p_superclass = &OBJC_METACLASS___DMDActivationiCloudAccountObserver.superclass;
        v245 = *v295;
        do
        {
          v92 = 0;
          v246 = v89;
          do
          {
            if (*v295 != v90)
            {
              objc_enumerationMutation(v260);
            }

            v93 = *(*(&v294 + 1) + 8 * v92);
            v94 = [v93 identifier];
            v95 = [v244 objectForKeyedSubscript:v94];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v96 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
              {
                v97 = [v93 identifier];
                *buf = 138543362;
                v323 = v97;
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "Remove %{public}@: Declaration remove operation already enqueued, skipping", buf, 0xCu);
              }
            }

            else
            {
              if (v95)
              {
                v98 = DMFConfigurationEngineLog();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                {
                  v99 = [v93 identifier];
                  v100 = objc_opt_class();
                  v101 = NSStringFromClass(v100);
                  *buf = 138543618;
                  v323 = v99;
                  v324 = 2114;
                  v325 = v101;
                  _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "Remove %{public}@: Cancelling enqueued %{public}@ so we can enqueue a remove operation", buf, 0x16u);
                }

                [v95 cancel];
              }

              v102 = p_superclass;
              v103 = objc_alloc((p_superclass + 409));
              v104 = [(DMDEngineDatabaseOperation *)self database];
              v105 = [v93 objectID];
              v106 = [v93 identifier];
              v96 = [v103 initWithDatabase:v104 payloadMetadataObjectID:v105 payloadIdentifier:v106];

              v107 = [v93 identifier];
              [v96 setName:v107];

              -[NSObject setRequiresNetworkTether:](v96, "setRequiresNetworkTether:", [v93 requiresNetworkTether]);
              -[NSObject setRequiresUnlockedKeychain:](v96, "setRequiresUnlockedKeychain:", [v93 requiresUnlockedKeychain]);
              v108 = [(DMDEngineDatabaseProcessingOperation *)self deviceStateProvider];
              [v96 setDeviceStateProvider:v108];

              v109 = [(DMDEngineDatabaseProcessingOperation *)self taskOperationProvider];
              [v96 setTaskOperationProvider:v109];

              [v250 addObject:v96];
              v110 = [v93 objectID];
              [v256 setObject:v96 forKeyedSubscript:v110];

              v111 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v323 = v96;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "Enqueued remove operation: %{public}@", buf, 0xCu);
              }

              p_superclass = v102;
              v90 = v245;
              v89 = v246;
            }

            v92 = v92 + 1;
          }

          while (v89 != v92);
          v89 = [v260 countByEnumeratingWithState:&v294 objects:v316 count:16];
        }

        while (v89);
      }

      v112 = [v240 identifier];
      v113 = [DMDConfigurationPayloadMetadata fetchRequestForConfigurationsPendingInstallFromOrganizationWithIdentifier:v112];

      v230 = v113;
      v114 = v241;
      v115 = [v113 execute:v241];
      v116 = [v115 mutableCopy];

      v228 = v116;
      if (v116)
      {
        v292 = 0u;
        v293 = 0u;
        v290 = 0u;
        v291 = 0u;
        v237 = [v116 copy];
        v117 = [v237 countByEnumeratingWithState:&v290 objects:v315 count:16];
        v118 = v256;
        if (v117)
        {
          v119 = v117;
          v120 = *v291;
          v121 = &OBJC_METACLASS___DMDActivationiCloudAccountObserver.superclass;
          v235 = *v291;
          do
          {
            v122 = 0;
            v236 = v119;
            do
            {
              if (*v291 != v120)
              {
                objc_enumerationMutation(v237);
              }

              v123 = *(*(&v290 + 1) + 8 * v122);
              v124 = [v123 identifier];
              v125 = [v244 objectForKeyedSubscript:v124];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v125)
                {
                  v128 = DMFConfigurationEngineLog();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                  {
                    v129 = [v123 identifier];
                    v130 = objc_opt_class();
                    v131 = NSStringFromClass(v130);
                    *buf = 138543618;
                    v323 = v129;
                    v324 = 2114;
                    v325 = v131;
                    _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_INFO, "Install %{public}@: Cancelling enqueued %{public}@ so we can enqueue an install operation", buf, 0x16u);
                  }

                  [v125 cancel];
                }

                v238 = v125;
                v239 = v122;
                v132 = objc_alloc((v121 + 369));
                v133 = [(DMDEngineDatabaseOperation *)self database];
                v134 = [v123 objectID];
                v135 = [v123 identifier];
                v136 = [v132 initWithDatabase:v133 payloadMetadataObjectID:v134 payloadIdentifier:v135];

                v137 = [v123 identifier];
                [v136 setName:v137];

                -[NSObject setRequiresNetworkTether:](v136, "setRequiresNetworkTether:", [v123 requiresNetworkTether]);
                -[NSObject setRequiresUnlockedKeychain:](v136, "setRequiresUnlockedKeychain:", [v123 requiresUnlockedKeychain]);
                v138 = [(DMDEngineDatabaseProcessingOperation *)self deviceStateProvider];
                [v136 setDeviceStateProvider:v138];

                v139 = [(DMDEngineDatabaseProcessingOperation *)self taskOperationProvider];
                [v136 setTaskOperationProvider:v139];

                [v250 addObject:v136];
                v140 = [v123 objectID];
                [v118 setObject:v136 forKeyedSubscript:v140];

                [obja addObject:v136];
                v141 = DMFConfigurationEngineLog();
                if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v323 = v136;
                  _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "Enqueued configuration install operation: %{public}@", buf, 0xCu);
                }

                v288 = 0u;
                v289 = 0u;
                v286 = 0u;
                v287 = 0u;
                v142 = [v123 outgoingPayloadMetadataReferences];
                v143 = [v142 countByEnumeratingWithState:&v286 objects:v314 count:16];
                v261 = v136;
                if (!v143)
                {
LABEL_118:

                  v120 = v235;
                  v119 = v236;
                  v121 = (&OBJC_METACLASS___DMDActivationiCloudAccountObserver + 8);
                  v122 = v239;
                  v125 = v238;
                  goto LABEL_119;
                }

                v144 = v143;
                v145 = *v287;
                while (2)
                {
                  v146 = 0;
LABEL_100:
                  if (*v287 != v145)
                  {
                    objc_enumerationMutation(v142);
                  }

                  v147 = *(*(&v286 + 1) + 8 * v146);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v147 installed] & 1) == 0)
                  {
                    v148 = [v147 objectID];
                    v149 = [v118 objectForKeyedSubscript:v148];

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (!v149)
                      {
                        goto LABEL_110;
                      }
                    }

                    else
                    {
                      v150 = DMFConfigurationEngineLog();
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
                      {
                        v151 = [v147 identifier];
                        v152 = objc_opt_class();
                        v153 = NSStringFromClass(v152);
                        *buf = 138543618;
                        v323 = v151;
                        v324 = 2114;
                        v325 = v153;
                        _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_INFO, "Install %{public}@: Cancelling enqueued %{public}@ so we can enqueue an asset install operation", buf, 0x16u);
                      }

                      [(DMDAssetInstallOperation *)v149 cancel];
LABEL_110:
                      v154 = [DMDAssetInstallOperation alloc];
                      v155 = [(DMDEngineDatabaseOperation *)self database];
                      v156 = [v147 objectID];
                      v157 = [v147 identifier];
                      v158 = [(DMDPayloadActionOperation *)v154 initWithDatabase:v155 payloadMetadataObjectID:v156 payloadIdentifier:v157];

                      v159 = [v147 identifier];
                      [(DMDAssetInstallOperation *)v158 setName:v159];

                      -[DMDPayloadActionOperation setRequiresNetworkTether:](v158, "setRequiresNetworkTether:", [v147 requiresNetworkTether]);
                      -[DMDPayloadActionOperation setRequiresUnlockedKeychain:](v158, "setRequiresUnlockedKeychain:", [v147 requiresUnlockedKeychain]);
                      v160 = [(DMDEngineDatabaseProcessingOperation *)self deviceStateProvider];
                      [(DMDPayloadActionOperation *)v158 setDeviceStateProvider:v160];

                      v118 = v256;
                      v161 = [(DMDEngineDatabaseProcessingOperation *)self taskOperationProvider];
                      [(DMDPayloadActionOperation *)v158 setTaskOperationProvider:v161];

                      [(DMDAssetInstallOperation *)v158 setAssetResolver:v248];
                      [v250 addObject:v158];
                      v162 = [v147 objectID];
                      [v256 setObject:v158 forKeyedSubscript:v162];

                      [obja addObject:v158];
                      v149 = v158;
                      v163 = DMFConfigurationEngineLog();
                      if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138543362;
                        v323 = v149;
                        _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_INFO, "Enqueued asset install operation: %{public}@", buf, 0xCu);
                      }
                    }

                    v164 = [v261 dependencies];
                    v165 = [v164 containsObject:v149];

                    if ((v165 & 1) == 0)
                    {
                      [v261 addDependency:v149];
                    }
                  }

                  if (v144 == ++v146)
                  {
                    v144 = [v142 countByEnumeratingWithState:&v286 objects:v314 count:16];
                    if (!v144)
                    {
                      goto LABEL_118;
                    }

                    continue;
                  }

                  goto LABEL_100;
                }
              }

              v126 = DMFConfigurationEngineLog();
              v261 = v126;
              if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
              {
                v127 = [v123 identifier];
                *buf = 138543362;
                v323 = v127;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "Install %{public}@: Declaration install operation already enqueued, skipping", buf, 0xCu);
              }

LABEL_119:

              v122 = v122 + 1;
              v114 = v241;
            }

            while (v122 != v119);
            v119 = [v237 countByEnumeratingWithState:&v290 objects:v315 count:16];
          }

          while (v119);
        }

        v166 = [v240 identifier];
        v167 = [DMDConfigurationPayloadMetadata fetchRequestForConfigurationsPendingInactiveFromOrganizationWithIdentifier:v166];

        v168 = [v167 execute:v114];
        v169 = v168;
        if (v168)
        {
          v284 = 0u;
          v285 = 0u;
          v282 = 0u;
          v283 = 0u;
          v258 = v168;
          v170 = v168;
          v171 = [v170 countByEnumeratingWithState:&v282 objects:v313 count:16];
          if (v171)
          {
            v172 = v171;
            v173 = *v283;
            v174 = DMFDeclarationStateStatusKey;
            v175 = DMFDeclarationStatusInactive;
            do
            {
              for (k = 0; k != v172; k = k + 1)
              {
                if (*v283 != v173)
                {
                  objc_enumerationMutation(v170);
                }

                v177 = *(*(&v282 + 1) + 8 * k);
                v311 = v174;
                v312 = v175;
                v178 = [NSDictionary dictionaryWithObjects:&v312 forKeys:&v311 count:1];
                [v177 setStateDictionary:v178];
              }

              v172 = [v170 countByEnumeratingWithState:&v282 objects:v313 count:16];
            }

            while (v172);
          }

          v179 = [v240 identifier];
          v180 = [DMDDeclarationPayloadMetadata fetchRequestForDeclarationsPendingDeleteFromOrganizationWithIdentifier:v179];

          v181 = [v180 execute:v241];
          v182 = v181;
          if (v181)
          {
            v280 = 0u;
            v281 = 0u;
            v278 = 0u;
            v279 = 0u;
            v183 = v181;
            v184 = [v183 countByEnumeratingWithState:&v278 objects:v310 count:16];
            v12 = v231;
            v118 = v256;
            if (v184)
            {
              v185 = v184;
              v186 = *v279;
              do
              {
                for (m = 0; m != v185; m = m + 1)
                {
                  if (*v279 != v186)
                  {
                    objc_enumerationMutation(v183);
                  }

                  [v231 deleteObject:*(*(&v278 + 1) + 8 * m)];
                }

                v185 = [v183 countByEnumeratingWithState:&v278 objects:v310 count:16];
              }

              while (v185);
            }

            v188 = DMFConfigurationEngineLog();
            v189 = os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG);

            if (v189)
            {
              v247 = v182;
              objb = v180;
              v190 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
              {
                sub_1000837DC();
              }

              v276 = 0u;
              v277 = 0u;
              v274 = 0u;
              v275 = 0u;
              v191 = v228;
              v192 = [v191 countByEnumeratingWithState:&v274 objects:v309 count:16];
              if (v192)
              {
                v193 = v192;
                v194 = *v275;
                do
                {
                  for (n = 0; n != v193; n = n + 1)
                  {
                    if (*v275 != v194)
                    {
                      objc_enumerationMutation(v191);
                    }

                    v196 = *(*(&v274 + 1) + 8 * n);
                    v197 = DMFConfigurationEngineLog();
                    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v323 = v196;
                      _os_log_debug_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                    }
                  }

                  v193 = [v191 countByEnumeratingWithState:&v274 objects:v309 count:16];
                }

                while (v193);
              }

              v198 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
              {
                sub_100083810();
              }

              v272 = 0u;
              v273 = 0u;
              v270 = 0u;
              v271 = 0u;
              v199 = v229;
              v200 = [v199 countByEnumeratingWithState:&v270 objects:v308 count:16];
              if (v200)
              {
                v201 = v200;
                v202 = *v271;
                do
                {
                  for (ii = 0; ii != v201; ii = ii + 1)
                  {
                    if (*v271 != v202)
                    {
                      objc_enumerationMutation(v199);
                    }

                    v204 = *(*(&v270 + 1) + 8 * ii);
                    v205 = DMFConfigurationEngineLog();
                    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v323 = v204;
                      _os_log_debug_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                    }
                  }

                  v201 = [v199 countByEnumeratingWithState:&v270 objects:v308 count:16];
                }

                while (v201);
              }

              v206 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
              {
                sub_100083844();
              }

              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              v207 = v183;
              v208 = [v207 countByEnumeratingWithState:&v266 objects:v307 count:16];
              v182 = v247;
              if (v208)
              {
                v209 = v208;
                v210 = *v267;
                do
                {
                  for (jj = 0; jj != v209; jj = jj + 1)
                  {
                    if (*v267 != v210)
                    {
                      objc_enumerationMutation(v207);
                    }

                    v212 = *(*(&v266 + 1) + 8 * jj);
                    v213 = DMFConfigurationEngineLog();
                    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v323 = v212;
                      _os_log_debug_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                    }
                  }

                  v209 = [v207 countByEnumeratingWithState:&v266 objects:v307 count:16];
                }

                while (v209);
              }

              v214 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
              {
                sub_100083878();
              }

              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v215 = v250;
              v216 = [v215 countByEnumeratingWithState:&v262 objects:v306 count:16];
              if (v216)
              {
                v217 = v216;
                v218 = *v263;
                do
                {
                  for (kk = 0; kk != v217; kk = kk + 1)
                  {
                    if (*v263 != v218)
                    {
                      objc_enumerationMutation(v215);
                    }

                    v220 = *(*(&v262 + 1) + 8 * kk);
                    v221 = DMFConfigurationEngineLog();
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138543362;
                      v323 = v220;
                      _os_log_debug_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
                    }
                  }

                  v217 = [v215 countByEnumeratingWithState:&v262 objects:v306 count:16];
                }

                while (v217);
              }

              v222 = DMFConfigurationEngineLog();
              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
              {
                sub_100083588();
              }

              v12 = v231;
              v180 = objb;
              v118 = v256;
            }

            v223 = v250;
            v85 = v227;
            v87 = v229;
          }

          else
          {
            v225 = DMFConfigurationEngineLog();
            v12 = v231;
            v118 = v256;
            v87 = v229;
            if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
            {
              sub_1000838AC(v241);
            }

            v223 = 0;
            v85 = v227;
          }

          v169 = v258;
        }

        else
        {
          v180 = DMFConfigurationEngineLog();
          v85 = v227;
          v87 = v229;
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            sub_100083938(v114);
          }

          v223 = 0;
          v12 = v231;
        }
      }

      else
      {
        v167 = DMFConfigurationEngineLog();
        v118 = v256;
        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          sub_100083938(v241);
        }

        v223 = 0;
        v12 = v231;
        v85 = v227;
        v87 = v229;
      }

      v224 = v240;
    }

    else
    {
      v230 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
      {
        sub_1000839C4(a7);
      }

      v223 = 0;
      v224 = v240;
      v118 = v256;
    }

LABEL_206:
  }

  else
  {
    v223 = 0;
    v224 = v240;
  }

  return v223;
}

- (DMDEngineDatabaseProcessingOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end