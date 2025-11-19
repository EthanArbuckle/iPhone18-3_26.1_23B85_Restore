@interface DMDCommandPayloadMetadata
+ (id)commandsWithPayloadDictionaries:(id)a3 organizationIdentifier:(id)a4 context:(id)a5 error:(id *)a6;
+ (id)fetchRequestForCommandsFromOrganizationWithIdentifier:(id)a3 matchingPredicate:(id)a4;
+ (id)fetchRequestForCommandsPendingDeleteFromOrganizationWithIdentifier:(id)a3;
+ (id)fetchRequestForCommandsPendingExecutionFromOrganizationWithIdentifier:(id)a3;
+ (id)fetchRequestForCommandsPendingRemovalFromOrganizationWithIdentifier:(id)a3;
@end

@implementation DMDCommandPayloadMetadata

+ (id)commandsWithPayloadDictionaries:(id)a3 organizationIdentifier:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v30 = a4;
  v29 = a5;
  v10 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v15 = DMFCommandPayloadStatusKey;
    v16 = DMFCommandStatusQueued;
    obj = v11;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [(DMDPayloadMetadata *)DMDCommandPayloadMetadata metadataWithPayloadDictionary:*(*(&v31 + 1) + 8 * i) organizationIdentifier:v30 context:v29 error:a6];
        v19 = v18;
        if (!v18)
        {
          goto LABEL_13;
        }

        v20 = [v18 identifier];
        v21 = [v10 objectForKeyedSubscript:v20];

        if (v21)
        {
          if (a6)
          {
            v37 = DMFConfigurationPayloadIdentifierErrorKey;
            v25 = [v19 identifier];
            v38 = v25;
            v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *a6 = DMFErrorWithCodeAndUserInfo();
          }

LABEL_13:

          v11 = obj;
          v24 = 0;
          goto LABEL_14;
        }

        v35 = v15;
        v36 = v16;
        v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v19 setStateDictionary:v22];

        v23 = [v19 identifier];
        [v10 setObject:v19 forKeyedSubscript:v23];
      }

      v11 = obj;
      v13 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v24 = v10;
LABEL_14:

  return v24;
}

+ (id)fetchRequestForCommandsFromOrganizationWithIdentifier:(id)a3 matchingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", v6];
    [v8 addObject:v9];
  }

  if (v7)
  {
    [v8 addObject:v7];
  }

  v10 = [a1 fetchRequest];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v10 setPredicate:v11];

  return v10;
}

+ (id)fetchRequestForCommandsPendingExecutionFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [a1 fetchRequestForCommandsFromOrganizationWithIdentifier:v4 matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForCommandsPendingRemovalFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanFalse];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [a1 fetchRequestForCommandsFromOrganizationWithIdentifier:v4 matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForCommandsPendingDeleteFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"pendingStatusUpdate", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [a1 fetchRequestForCommandsFromOrganizationWithIdentifier:v4 matchingPredicate:v8];

  return v9;
}

@end