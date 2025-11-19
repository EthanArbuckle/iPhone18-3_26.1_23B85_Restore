@interface DMDDeclarationPayloadMetadata
+ (id)declarationsWithDictionaries:(id)a3 organizationIdentifier:(id)a4 context:(id)a5 error:(id *)a6;
+ (id)fetchRequestForActiveDeclarationFromOrganizationWithIdentifier:(id)a3 withIdentifier:(id)a4 serverHash:(id)a5;
+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)a3;
+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)a3 withIdentifiers:(id)a4;
+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)a3 matchingPredicate:(id)a4;
+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)a3 withIdentifiers:(id)a4;
+ (id)fetchRequestForDeclarationsPendingDeleteFromOrganizationWithIdentifier:(id)a3;
+ (id)fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:(id)a3;
- (NSString)uniqueIdentifier;
- (id)descriptiveProperties;
- (void)applyPayloadDictionary:(id)a3;
- (void)setStateDictionary:(id)a3;
@end

@implementation DMDDeclarationPayloadMetadata

- (NSString)uniqueIdentifier
{
  v3 = [(DMDDeclarationPayloadMetadata *)self identifier];
  v4 = [(DMDDeclarationPayloadMetadata *)self serverHash];
  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  return v5;
}

- (void)applyPayloadDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:DMFDeclarationPayloadServerHashKey];
  [(DMDDeclarationPayloadMetadata *)self setServerHash:v4];
}

- (id)descriptiveProperties
{
  v6.receiver = self;
  v6.super_class = DMDDeclarationPayloadMetadata;
  v2 = [(DMDPayloadMetadata *)&v6 descriptiveProperties];
  v7[0] = @"serverHash";
  v7[1] = @"failed";
  v3 = [NSArray arrayWithObjects:v7 count:2];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)setStateDictionary:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(DMDDeclarationPayloadMetadata *)self serverHash];
  [v4 setObject:v5 forKeyedSubscript:DMFDeclarationStateServerHashKey];

  v6.receiver = self;
  v6.super_class = DMDDeclarationPayloadMetadata;
  [(DMDPayloadMetadata *)&v6 setStateDictionary:v4];
}

+ (id)declarationsWithDictionaries:(id)a3 organizationIdentifier:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v9;
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

        v18 = [(DMDPayloadMetadata *)DMDDeclarationPayloadMetadata metadataWithPayloadDictionary:*(*(&v28 + 1) + 8 * i) organizationIdentifier:v10 context:v11 error:a6];
        v19 = v18;
        if (!v18)
        {
          goto LABEL_13;
        }

        v20 = [v18 identifier];
        v21 = [v12 objectForKeyedSubscript:v20];

        if (v21)
        {
          if (a6)
          {
            v32 = DMFConfigurationPayloadIdentifierErrorKey;
            v24 = [v19 identifier];
            v33 = v24;
            v25 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *a6 = DMFErrorWithCodeAndUserInfo();
          }

LABEL_13:

          v13 = obj;
          v23 = 0;
          goto LABEL_14;
        }

        v22 = [v19 identifier];
        [v12 setObject:v19 forKeyedSubscript:v22];
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

+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)a3 matchingPredicate:(id)a4
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

+ (id)fetchRequestForDeclarationsFromOrganizationWithIdentifier:(id)a3 withIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"identifier IN %@", a4];
  v8 = [a1 fetchRequestForDeclarationsFromOrganizationWithIdentifier:v6 matchingPredicate:v7];

  return v8;
}

+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];
  v8 = [a1 fetchRequestForDeclarationsFromOrganizationWithIdentifier:v4 matchingPredicate:v7];

  return v8;
}

+ (id)fetchRequestForActiveDeclarationsFromOrganizationWithIdentifier:(id)a3 withIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"identifier IN %@", a4];
  v13[0] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  v11 = [a1 fetchRequestForDeclarationsFromOrganizationWithIdentifier:v6 matchingPredicate:v10];

  return v11;
}

+ (id)fetchRequestForActiveDeclarationFromOrganizationWithIdentifier:(id)a3 withIdentifier:(id)a4 serverHash:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v12 = [NSPredicate predicateWithFormat:@"%K = %@", @"identifier", v9, v11];

  v18[1] = v12;
  v13 = [NSPredicate predicateWithFormat:@"%K = %@", @"serverHash", v8];

  v18[2] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:3];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  v16 = [a1 fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:v10 matchingPredicate:v15];

  return v16;
}

+ (id)fetchRequestForFailedDeclarationsFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v11[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanTrue];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [a1 fetchRequestForDeclarationsFromOrganizationWithIdentifier:v4 matchingPredicate:v8];

  return v9;
}

+ (id)fetchRequestForDeclarationsPendingDeleteFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanFalse];
  v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse, v5];
  v12[1] = v6;
  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"pendingStatusUpdate", &__kCFBooleanFalse];
  v12[2] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:3];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  v10 = [a1 fetchRequestForDeclarationsFromOrganizationWithIdentifier:v4 matchingPredicate:v9];

  return v10;
}

@end