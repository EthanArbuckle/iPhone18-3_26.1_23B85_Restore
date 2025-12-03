@interface DMDConfigurationPayloadMetadata
+ (id)fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:(id)identifier payloadIdentifiers:(id)identifiers;
+ (id)fetchRequestForConfigurationsPendingInactiveFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForConfigurationsPendingInstallFromOrganizationWithIdentifier:(id)identifier;
+ (id)fetchRequestForConfigurationsPendingRemoveFromOrganizationWithIdentifier:(id)identifier;
@end

@implementation DMDConfigurationPayloadMetadata

+ (id)fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];

  v11[0] = identifierCopy;
  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [fetchRequest setPredicate:v9];

  return fetchRequest;
}

+ (id)fetchRequestForAvailableConfigurationsFromOrganizationWithIdentifier:(id)identifier payloadIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];

  v10 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue, identifierCopy];
  v15[1] = v10;
  identifiersCopy = [NSPredicate predicateWithFormat:@"identifier IN %@", identifiersCopy];

  v15[2] = identifiersCopy;
  v12 = [NSArray arrayWithObjects:v15 count:3];
  v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
  [fetchRequest setPredicate:v13];

  return fetchRequest;
}

+ (id)fetchRequestForConfigurationsPendingInstallFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];

  v13[0] = identifierCopy;
  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v13[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanFalse];
  v13[2] = v8;
  dMFDeclarationStatePredicateLastEvaluationValueKey = [NSPredicate predicateWithFormat:@"SUBQUERY(incomingPayloadMetadataReferences, $ref, ($ref.available == YES) && ($ref.predicatePayloadMetadata.%K.BOOLValue == YES)).@count > 0", DMFDeclarationStatePredicateLastEvaluationValueKey];
  v13[3] = dMFDeclarationStatePredicateLastEvaluationValueKey;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  [fetchRequest setPredicate:v11];

  return fetchRequest;
}

+ (id)fetchRequestForConfigurationsPendingRemoveFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];

  v13[0] = identifierCopy;
  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanTrue];
  v13[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"failed", &__kCFBooleanFalse];
  v13[2] = v8;
  dMFDeclarationStatePredicateLastEvaluationValueKey = [NSPredicate predicateWithFormat:@"SUBQUERY(incomingPayloadMetadataReferences, $ref, ($ref.type BEGINSWITH[c] 'com.apple.activation') && ($ref.predicatePayloadMetadata.%K.BOOLValue == YES)).@count == 0", DMFDeclarationStatePredicateLastEvaluationValueKey];
  v13[3] = dMFDeclarationStatePredicateLastEvaluationValueKey;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  [fetchRequest setPredicate:v11];

  return fetchRequest;
}

+ (id)fetchRequestForConfigurationsPendingInactiveFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"organization.identifier", identifierCopy];

  v7 = [NSPredicate predicateWithFormat:@"%K = %@", @"available", &__kCFBooleanTrue, identifierCopy];
  v14[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K = %@", @"installed", &__kCFBooleanFalse];
  v14[2] = v8;
  dMFDeclarationStatusInactive = [NSPredicate predicateWithFormat:@"%K != %@", @"status", DMFDeclarationStatusInactive];
  v14[3] = dMFDeclarationStatusInactive;
  v10 = [NSPredicate predicateWithFormat:@"SUBQUERY(incomingPayloadMetadataReferences, $ref, $ref.available == YES).@count = 0"];
  v14[4] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:5];
  v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  [fetchRequest setPredicate:v12];

  return fetchRequest;
}

@end