@interface DMDCommandPayloadMetadata
+ (id)commandsWithPayloadDictionaries:(id)dictionaries organizationIdentifier:(id)identifier context:(id)context error:(id *)error;
+ (id)fetchRequestForCommandsFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate;
+ (id)fetchRequestForCommandsPendingDeleteFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForCommandsPendingExecutionFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForCommandsPendingRemovalFromOrganizationWithIdentifier:(id)identifier;
@end

@implementation DMDCommandPayloadMetadata

+ (id)commandsWithPayloadDictionaries:(id)dictionaries organizationIdentifier:(id)identifier context:(id)context error:(id *)error
{
  dictionariesCopy = dictionaries;
  identifierCopy = identifier;
  contextCopy = context;
  v10 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = dictionariesCopy;
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

        v18 = [(DMDPayloadMetadata *)DMDCommandPayloadMetadata metadataWithPayloadDictionary:*(*(&v31 + 1) + 8 * i) organizationIdentifier:identifierCopy context:contextCopy error:error];
        v19 = v18;
        if (!v18)
        {
          goto LABEL_13;
        }

        identifier = [v18 identifier];
        v21 = [v10 objectForKeyedSubscript:identifier];

        if (v21)
        {
          if (error)
          {
            v37 = DMFConfigurationPayloadIdentifierErrorKey;
            identifier2 = [v19 identifier];
            v38 = identifier2;
            v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *error = DMFErrorWithCodeAndUserInfo();
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

        identifier3 = [v19 identifier];
        [v10 setObject:v19 forKeyedSubscript:identifier3];
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

+ (id)fetchRequestForCommandsFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate
{
  identifierCopy = identifier;
  predicateCopy = predicate;
  v8 = objc_opt_new();
  if (identifierCopy)
  {
    identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];
    [v8 addObject:identifierCopy];
  }

  if (predicateCopy)
  {
    [v8 addObject:predicateCopy];
  }

  fetchRequest = [self fetchRequest];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [fetchRequest setPredicate:v11];

  return fetchRequest;
}

+ (id)fetchRequestForCommandsPendingExecutionFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [self fetchRequestForCommandsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForCommandsPendingRemovalFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanFalse];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [self fetchRequestForCommandsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForCommandsPendingDeleteFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"pendingStatusUpdate", &__kCFBooleanFalse];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [self fetchRequestForCommandsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v8];

  return v9;
}

@end