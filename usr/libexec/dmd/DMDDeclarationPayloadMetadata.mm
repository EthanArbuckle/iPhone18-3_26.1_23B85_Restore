@interface DMDDeclarationPayloadMetadata
+ (id)declarationsWithDictionaries:(id)dictionaries organizationIdentifier:(id)identifier context:(id)context error:(id *)error;
+ (id)fetchRequestForActiveDeclarationFromOrganizationWithIdentifier:(id)identifier withIdentifier:(id)withIdentifier serverHash:(id)hash;
+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)identifier withIdentifiers:(id)identifiers;
+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate;
+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)identifier withIdentifiers:(id)identifiers;
+ (id)fetchRequestForDeclarationsPendingDeleteFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:(id)identifier;
- (NSString)uniqueIdentifier;
- (id)descriptiveProperties;
- (void)applyPayloadDictionary:(id)dictionary;
- (void)setStateDictionary:(id)dictionary;
@end

@implementation DMDDeclarationPayloadMetadata

- (NSString)uniqueIdentifier
{
  identifier = [(DMDDeclarationPayloadMetadata *)self identifier];
  serverHash = [(DMDDeclarationPayloadMetadata *)self serverHash];
  v5 = [NSString stringWithFormat:@"%@-%@", identifier, serverHash];

  return v5;
}

- (void)applyPayloadDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:DMFDeclarationPayloadServerHashKey];
  [(DMDDeclarationPayloadMetadata *)self setServerHash:v4];
}

- (id)descriptiveProperties
{
  v6.receiver = self;
  v6.super_class = DMDDeclarationPayloadMetadata;
  descriptiveProperties = [(DMDPayloadMetadata *)&v6 descriptiveProperties];
  v7[0] = @"serverHash";
  v7[1] = @"failed";
  v3 = [NSArray arrayWithObjects:v7 count:2];
  v4 = [descriptiveProperties arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)setStateDictionary:(id)dictionary
{
  v4 = [dictionary mutableCopy];
  serverHash = [(DMDDeclarationPayloadMetadata *)self serverHash];
  [v4 setObject:serverHash forKeyedSubscript:DMFDeclarationStateServerHashKey];

  v6.receiver = self;
  v6.super_class = DMDDeclarationPayloadMetadata;
  [(DMDPayloadMetadata *)&v6 setStateDictionary:v4];
}

+ (id)declarationsWithDictionaries:(id)dictionaries organizationIdentifier:(id)identifier context:(id)context error:(id *)error
{
  dictionariesCopy = dictionaries;
  identifierCopy = identifier;
  contextCopy = context;
  v12 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = dictionariesCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    obj = v13;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [(DMDPayloadMetadata *)DMDDeclarationPayloadMetadata metadataWithPayloadDictionary:*(*(&v28 + 1) + 8 * i) organizationIdentifier:identifierCopy context:contextCopy error:error];
        v19 = v18;
        if (!v18)
        {
          goto LABEL_13;
        }

        identifier = [v18 identifier];
        v21 = [v12 objectForKeyedSubscript:identifier];

        if (v21)
        {
          if (error)
          {
            v32 = DMFConfigurationPayloadIdentifierErrorKey;
            identifier2 = [v19 identifier];
            v33 = identifier2;
            v25 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *error = DMFErrorWithCodeAndUserInfo();
          }

LABEL_13:

          v13 = obj;
          v23 = 0;
          goto LABEL_14;
        }

        identifier3 = [v19 identifier];
        [v12 setObject:v19 forKeyedSubscript:identifier3];
      }

      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = v12;
LABEL_14:

  return v23;
}

+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate
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

+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)identifier withIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiers = [NSPredicate predicateWithFormat:@"identifier IN %@", identifiers];
  v8 = [self fetchRequestForDeclarationsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:identifiers];

  return v8;
}

+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];
  v8 = [self fetchRequestForDeclarationsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v7];

  return v8;
}

+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)identifier withIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiers = [NSPredicate predicateWithFormat:@"identifier IN %@", identifiers];
  v13[0] = identifiers;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  v11 = [self fetchRequestForDeclarationsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v10];

  return v11;
}

+ (id)fetchRequestForActiveDeclarationFromOrganizationWithIdentifier:(id)identifier withIdentifier:(id)withIdentifier serverHash:(id)hash
{
  hashCopy = hash;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v11 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v12 = [NSPredicate predicateWithFormat:@"%K = %@", @"identifier", withIdentifierCopy, v11];

  v18[1] = v12;
  hashCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"serverHash", hashCopy];

  v18[2] = hashCopy;
  v14 = [NSArray arrayWithObjects:v18 count:3];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  v16 = [self fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v15];

  return v16;
}

+ (id)fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanTrue];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [self fetchRequestForDeclarationsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForDeclarationsPendingDeleteFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanFalse];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse, v5];
  v12[1] = v6;
  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"pendingStatusUpdate", &__kCFBooleanFalse];
  v12[2] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:3];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  v10 = [self fetchRequestForDeclarationsFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v9];

  return v10;
}

@end