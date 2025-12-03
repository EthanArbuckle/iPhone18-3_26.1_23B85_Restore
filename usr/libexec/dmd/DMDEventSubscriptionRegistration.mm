@interface DMDEventSubscriptionRegistration
+ (id)fetchRequestMatchingRegistrationFromOrganizationWithIdentifier:(id)identifier payloadIdentifier:(id)payloadIdentifier;
- (id)identifier;
- (void)setPayloadMetadata:(id)metadata;
@end

@implementation DMDEventSubscriptionRegistration

- (id)identifier
{
  payloadMetadata = [(DMDEventSubscriptionRegistration *)self payloadMetadata];
  organization = [payloadMetadata organization];
  identifier = [organization identifier];
  payloadMetadata2 = [(DMDEventSubscriptionRegistration *)self payloadMetadata];
  identifier2 = [payloadMetadata2 identifier];
  v8 = [NSString stringWithFormat:@"%@-%@", identifier, identifier2];

  return v8;
}

- (void)setPayloadMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(DMDEventSubscriptionRegistration *)self willChangeValueForKey:@"payloadMetadata"];
  [(DMDEventSubscriptionRegistration *)self setPrimitiveValue:metadataCopy forKey:@"payloadMetadata"];

  [(DMDEventSubscriptionRegistration *)self didChangeValueForKey:@"payloadMetadata"];
}

+ (id)fetchRequestMatchingRegistrationFromOrganizationWithIdentifier:(id)identifier payloadIdentifier:(id)payloadIdentifier
{
  payloadIdentifierCopy = payloadIdentifier;
  identifierCopy = identifier;
  v7 = +[DMDEventSubscriptionRegistration fetchRequest];
  payloadIdentifierCopy = [NSPredicate predicateWithFormat:@"payloadMetadata.organization.identifier = %@ AND payloadMetadata.identifier = %@", identifierCopy, payloadIdentifierCopy];

  [v7 setPredicate:payloadIdentifierCopy];

  return v7;
}

@end