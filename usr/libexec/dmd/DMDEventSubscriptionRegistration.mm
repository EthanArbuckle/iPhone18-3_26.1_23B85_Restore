@interface DMDEventSubscriptionRegistration
+ (id)fetchRequestMatchingRegistrationFromOrganizationWithIdentifier:(id)a3 payloadIdentifier:(id)a4;
- (id)identifier;
- (void)setPayloadMetadata:(id)a3;
@end

@implementation DMDEventSubscriptionRegistration

- (id)identifier
{
  v3 = [(DMDEventSubscriptionRegistration *)self payloadMetadata];
  v4 = [v3 organization];
  v5 = [v4 identifier];
  v6 = [(DMDEventSubscriptionRegistration *)self payloadMetadata];
  v7 = [v6 identifier];
  v8 = [NSString stringWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (void)setPayloadMetadata:(id)a3
{
  v4 = a3;
  [(DMDEventSubscriptionRegistration *)self willChangeValueForKey:@"payloadMetadata"];
  [(DMDEventSubscriptionRegistration *)self setPrimitiveValue:v4 forKey:@"payloadMetadata"];

  [(DMDEventSubscriptionRegistration *)self didChangeValueForKey:@"payloadMetadata"];
}

+ (id)fetchRequestMatchingRegistrationFromOrganizationWithIdentifier:(id)a3 payloadIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[DMDEventSubscriptionRegistration fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"payloadMetadata.organization.identifier = %@ AND payloadMetadata.identifier = %@", v6, v5];

  [v7 setPredicate:v8];

  return v7;
}

@end