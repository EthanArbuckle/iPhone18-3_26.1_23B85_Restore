@interface DMDPayloadMetadata
+ (id)fetchRequestForActivePayloadMetadatasFromOrganizationWithIdentifier:(id)identifier withIdentifier:(id)withIdentifier;
+ (id)fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate;
+ (id)fetchRequestForPayloadMetadatasPendingStatusUpdateFromOrganizationWithIdentifier:(id)identifier;
+ (id)keyPathsForValuesAffectingStatus;
+ (id)metadataWithPayloadDictionary:(id)dictionary organizationIdentifier:(id)identifier context:(id)context error:(id *)error;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (BOOL)validateProperties:(id *)properties;
- (DMDPayloadMetadata)init;
- (DMDPayloadMetadata)initWithContext:(id)context;
- (DMDPayloadMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSString)status;
- (id)description;
- (id)descriptiveProperties;
- (void)setLastStatusReportTimestamp:(id)timestamp;
- (void)setStateDictionary:(id)dictionary;
- (void)willSave;
@end

@implementation DMDPayloadMetadata

+ (id)fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:(id)identifier matchingPredicate:(id)predicate
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

+ (id)fetchRequestForActivePayloadMetadatasFromOrganizationWithIdentifier:(id)identifier withIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifier = [NSPredicate predicateWithFormat:@"%K = %@", @"identifier", withIdentifier];
  v8 = [self fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:identifierCopy matchingPredicate:withIdentifier];

  return v8;
}

+ (id)fetchRequestForPayloadMetadatasPendingStatusUpdateFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"pendingStatusUpdate", &__kCFBooleanTrue];
  v6 = [self fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:identifierCopy matchingPredicate:v5];

  return v6;
}

+ (id)metadataWithPayloadDictionary:(id)dictionary organizationIdentifier:(id)identifier context:(id)context error:(id *)error
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  contextCopy = context;
  v13 = DMFDeclarationPayloadTypeKey;
  v14 = [dictionaryCopy objectForKeyedSubscript:DMFDeclarationPayloadTypeKey];
  if (![v14 hasPrefix:@"com.apple.command"] && !objc_msgSend(v14, "hasPrefix:", @"com.apple.activation") && !objc_msgSend(v14, "hasPrefix:", @"com.apple.asset") && !objc_msgSend(v14, "hasPrefix:", @"com.apple.configuration"))
  {
    v15 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100085E9C(v14, v15);
    }
  }

  v16 = objc_opt_class();
  if (([v16 isSubclassOfClass:self] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v40[0] = DMFConfigurationPayloadIdentifierErrorKey;
    v29 = [dictionaryCopy objectForKeyedSubscript:DMFDeclarationPayloadIdentifierKey];
    v19 = v29;
    v30 = &stru_1000D0428;
    if (v29)
    {
      v30 = v29;
    }

    v40[1] = DMFInvalidParameterErrorKey;
    v41[0] = v30;
    v41[1] = v13;
    v26 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    *error = DMFErrorWithCodeAndUserInfo();
    goto LABEL_27;
  }

  v17 = [v16 alloc];
  entity = [v16 entity];
  v19 = [v17 initWithEntity:entity insertIntoManagedObjectContext:contextCopy];

  if (self)
  {
    [v19 setType:v14];
    v20 = [dictionaryCopy objectForKeyedSubscript:DMFDeclarationPayloadIdentifierKey];
    [v19 setIdentifier:v20];

    v21 = [dictionaryCopy objectForKeyedSubscript:DMFDeclarationPayloadRequiresNetworkTetherKey];
    [v19 setRequiresNetworkTether:{objc_msgSend(v21, "BOOLValue")}];

    v22 = [[DMDPayload alloc] initWithContext:contextCopy];
    [v19 setPayload:v22];

    payload = [v19 payload];
    [payload setPayloadDictionary:dictionaryCopy];

    [v19 setAvailable:1];
    v24 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:identifierCopy];
    v35 = 0;
    v25 = [contextCopy executeFetchRequest:v24 error:&v35];
    v26 = v35;

    if (v25)
    {
      firstObject = [v25 firstObject];
      if (firstObject)
      {
        [v19 setOrganization:firstObject];
        [v19 setRequiresUnlockedKeychain:{objc_msgSend(v14, "hasPrefix:", @"com.apple.configuration.policy"}];
        v36 = DMFDeclarationStateStatusKey;
        v37 = DMFDeclarationStatusQueued;
        v28 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v19 setStateDictionary:v28];

        [v19 applyPayloadDictionary:dictionaryCopy];
        if ([v19 validateProperties:error])
        {

          goto LABEL_14;
        }

        [contextCopy deleteObject:v19];
      }

      else if (error)
      {
        v38 = DMFConfigurationOrganizationIdentifierErrorKey;
        v39 = identifierCopy;
        v33 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *error = DMFErrorWithCodeAndUserInfo();
      }
    }

    else
    {
      v31 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100085F14(identifierCopy, v26, v31);
      }

      if (error)
      {
        v32 = v26;
        *error = v26;
      }
    }

LABEL_27:

    error = 0;
    goto LABEL_28;
  }

LABEL_14:
  v19 = v19;
  error = v19;
LABEL_28:

LABEL_29:

  return error;
}

- (id)description
{
  descriptiveProperties = [(DMDPayloadMetadata *)self descriptiveProperties];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (id)descriptiveProperties
{
  v4[0] = @"type";
  v4[1] = @"identifier";
  v4[2] = @"available";
  v4[3] = @"installed";
  v4[4] = @"organization.identifier";
  v4[5] = @"requiresNetworkTether";
  v4[6] = @"requiresUnlockedKeychain";
  v4[7] = @"lastStatusReportTimestamp";
  v4[8] = @"stateChangeTimestamp";
  v2 = [NSArray arrayWithObjects:v4 count:9];

  return v2;
}

- (NSString)status
{
  stateDictionary = [(DMDPayloadMetadata *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:DMFDeclarationStateStatusKey];

  return v3;
}

+ (id)keyPathsForValuesAffectingStatus
{
  v5 = @"stateDictionary";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)setStateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [(DMDPayloadMetadata *)self primitiveValueForKey:@"stateDictionary"];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 setObject:0 forKeyedSubscript:DMFDeclarationStateTimestampKey];
  }

  else if (!dictionaryCopy)
  {
    goto LABEL_6;
  }

  if (([v5 isEqual:dictionaryCopy] & 1) == 0)
  {
    [(DMDPayloadMetadata *)self willChangeValueForKey:@"stateDictionary"];
    v6 = objc_opt_new();
    [(DMDPayloadMetadata *)self setStateChangeTimestamp:v6];

    [(DMDPayloadMetadata *)self setPendingStatusUpdate:1];
    v7 = [dictionaryCopy mutableCopy];
    stateChangeTimestamp = [(DMDPayloadMetadata *)self stateChangeTimestamp];
    [v7 setObject:stateChangeTimestamp forKeyedSubscript:DMFDeclarationStateTimestampKey];

    [(DMDPayloadMetadata *)self setPrimitiveValue:v7 forKey:@"stateDictionary"];
    [(DMDPayloadMetadata *)self didChangeValueForKey:@"stateDictionary"];
  }

LABEL_6:
}

- (void)setLastStatusReportTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = [(DMDPayloadMetadata *)self primitiveValueForKey:@"lastStatusReportTimestamp"];
  if (timestampCopy | v4 && ([v4 isEqual:timestampCopy] & 1) == 0)
  {
    [(DMDPayloadMetadata *)self willChangeValueForKey:@"lastStatusReportTimestamp"];
    [(DMDPayloadMetadata *)self setPrimitiveValue:timestampCopy forKey:@"lastStatusReportTimestamp"];
    stateChangeTimestamp = [(DMDPayloadMetadata *)self stateChangeTimestamp];
    lastStatusReportTimestamp = [(DMDPayloadMetadata *)self lastStatusReportTimestamp];
    v7 = [stateChangeTimestamp compare:lastStatusReportTimestamp];

    if (v7 != 1)
    {
      [(DMDPayloadMetadata *)self setPendingStatusUpdate:0];
    }

    [(DMDPayloadMetadata *)self didChangeValueForKey:@"lastStatusReportTimestamp"];
  }
}

- (void)willSave
{
  changedValues = [(DMDPayloadMetadata *)self changedValues];
  allKeys = [changedValues allKeys];

  if ([allKeys containsObject:@"stateDictionary"])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    organization = [(DMDPayloadMetadata *)self organization];
    identifier = [organization identifier];
    [v4 postNotificationName:@"DMDConfigurationSourceStatusDidChange" object:identifier];
  }
}

- (BOOL)validateProperties:(id *)properties
{
  identifier = [(DMDPayloadMetadata *)self identifier];

  if (identifier)
  {
    type = [(DMDPayloadMetadata *)self type];

    if (type)
    {
      return 1;
    }

    if (properties)
    {
      v10[0] = DMFConfigurationPayloadIdentifierErrorKey;
      identifier2 = [(DMDPayloadMetadata *)self identifier];
      v10[1] = DMFInvalidParameterErrorKey;
      v11[0] = identifier2;
      v11[1] = DMFDeclarationPayloadTypeKey;
      v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
      *properties = DMFErrorWithCodeAndUserInfo();

      goto LABEL_8;
    }
  }

  else if (properties)
  {
    v12 = DMFInvalidParameterErrorKey;
    v13 = DMFDeclarationPayloadIdentifierKey;
    identifier2 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *properties = DMFErrorWithCodeAndUserInfo();
LABEL_8:
  }

  return 0;
}

- (BOOL)validateForInsert:(id *)insert
{
  v5 = [(DMDPayloadMetadata *)self validateProperties:?];
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = DMDPayloadMetadata;
    LOBYTE(v5) = [(DMDPayloadMetadata *)&v7 validateForInsert:insert];
  }

  return v5;
}

- (BOOL)validateForUpdate:(id *)update
{
  v5 = [(DMDPayloadMetadata *)self validateProperties:?];
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = DMDPayloadMetadata;
    LOBYTE(v5) = [(DMDPayloadMetadata *)&v7 validateForUpdate:update];
  }

  return v5;
}

- (BOOL)validateForDelete:(id *)delete
{
  v4.receiver = self;
  v4.super_class = DMDPayloadMetadata;
  return [(DMDPayloadMetadata *)&v4 validateForDelete:delete];
}

- (DMDPayloadMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v5.receiver = self;
  v5.super_class = DMDPayloadMetadata;
  return [(DMDPayloadMetadata *)&v5 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (DMDPayloadMetadata)initWithContext:(id)context
{
  contextCopy = context;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:@"DMDPayloadMetadata.m" lineNumber:317 description:{@"%@ cannot call %@", v7, v8}];

  entity = [objc_opt_class() entity];
  v10 = [(DMDPayloadMetadata *)self initWithEntity:entity insertIntoManagedObjectContext:contextCopy];

  return v10;
}

- (DMDPayloadMetadata)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"DMDPayloadMetadata.m" lineNumber:322 description:{@"%@ cannot call %@", v5, v6}];

  entity = [objc_opt_class() entity];
  v8 = [(DMDPayloadMetadata *)self initWithEntity:entity insertIntoManagedObjectContext:0];

  return v8;
}

@end