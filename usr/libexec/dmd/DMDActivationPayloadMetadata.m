@interface DMDActivationPayloadMetadata
+ (id)fetchRequestForActivationsFromOrganizationWithIdentifier:(id)a3;
- (void)updateStateDictionaryIfNeeded;
@end

@implementation DMDActivationPayloadMetadata

- (void)updateStateDictionaryIfNeeded
{
  v34 = [(DMDPayloadMetadata *)self status];
  v39 = objc_opt_new();
  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = self;
  obj = [(DMDActivationPayloadMetadata *)self outgoingPayloadMetadataReferences];
  v3 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v44;
    v36 = DMFDeclarationPayloadServerHashKey;
    v37 = DMFDeclarationPayloadIdentifierKey;
    v6 = 1;
    v7 = 1;
    v38 = *v44;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v44 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57[0] = v37;
          v10 = [v9 identifier];
          v57[1] = v36;
          v58[0] = v10;
          v11 = [v9 serverHash];
          v58[1] = v11;
          v12 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
          v13 = [v9 identifier];
          [v39 setObject:v12 forKeyedSubscript:v13];

          v14 = [v9 installed];
          v15 = [v9 identifier];
          v16 = [v39 objectForKeyedSubscript:v15];
          if (v14)
          {
            v17 = v41;
          }

          else
          {
            v17 = v40;
          }

          v6 &= v14 ^ 1;
          v7 &= v14;
          v5 = v38;
          [v17 addObject:v16];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
    v7 = 1;
  }

  [v41 sortUsingComparator:&stru_1000CDC10];
  [v40 sortUsingComparator:&stru_1000CDC10];
  v18 = [v39 allValues];
  v19 = [v18 mutableCopy];

  [v19 sortUsingComparator:&stru_1000CDC10];
  v20 = objc_opt_new();
  v21 = objc_opt_new();
  [v21 setObject:v19 forKeyedSubscript:@"ActivatedConfigurations"];
  v22 = [(DMDActivationPayloadMetadata *)self predicatePayloadMetadata];
  [v21 addEntriesFromDictionary:v22];

  [v20 setObject:v21 forKeyedSubscript:DMFDeclarationStatePayloadKey];
  if ([(DMDActivationPayloadMetadata *)self installed])
  {
    if (v7)
    {
      v23 = v34;
      if (([v34 isEqualToString:DMFDeclarationStatusRemoved] & 1) == 0)
      {
        v24 = DMFDeclarationStatusInstalled;
        v25 = DMFDeclarationStateStatusKey;
        v26 = v20;
LABEL_22:
        [v26 setObject:v24 forKeyedSubscript:v25];
LABEL_26:
        [(DMDDeclarationPayloadMetadata *)v35 setStateDictionary:v20];
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    [v20 setObject:DMFDeclarationStatusPendingClient forKeyedSubscript:DMFDeclarationStateStatusKey];
    v28 = DMFCommandStateReasonCodeKey;
    v54[0] = DMFCommandStateReasonCodeKey;
    v54[1] = DMFCEMReasonCodePayloadPhase;
    v55[0] = DMFCEMReasonCodePayloadPhase;
    v55[1] = @"Install";
    v29 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v56[0] = v29;
    v52[0] = v28;
    v52[1] = DMFCEMReasonCodePendingConfigurations;
    v53[0] = DMFCEMReasonCodePendingConfigurations;
    v53[1] = v40;
    v30 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
    v56[1] = v30;
    v31 = v56;
LABEL_25:
    v33 = [NSArray arrayWithObjects:v31 count:2];
    [v20 setObject:v33 forKeyedSubscript:DMFDeclarationStateReasonKey];

    v23 = v34;
    goto LABEL_26;
  }

  if ((v6 & 1) == 0)
  {
    [v20 setObject:DMFDeclarationStatusPendingClient forKeyedSubscript:DMFDeclarationStateStatusKey];
    v32 = DMFCommandStateReasonCodeKey;
    v49[0] = DMFCommandStateReasonCodeKey;
    v49[1] = DMFCEMReasonCodePayloadPhase;
    v50[0] = DMFCEMReasonCodePayloadPhase;
    v50[1] = @"Remove";
    v29 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    v51[0] = v29;
    v47[0] = v32;
    v47[1] = DMFCEMReasonCodePendingConfigurations;
    v48[0] = DMFCEMReasonCodePendingConfigurations;
    v48[1] = v41;
    v30 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
    v51[1] = v30;
    v31 = v51;
    goto LABEL_25;
  }

  v27 = DMFDeclarationStatusRemoved;
  v23 = v34;
  if (([v34 isEqualToString:DMFDeclarationStatusRemoved] & 1) == 0)
  {
    v25 = DMFDeclarationStateStatusKey;
    v26 = v20;
    v24 = v27;
    goto LABEL_22;
  }

LABEL_27:
}

+ (id)fetchRequestForActivationsFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", v4];

  [v5 setPredicate:v6];

  return v5;
}

@end