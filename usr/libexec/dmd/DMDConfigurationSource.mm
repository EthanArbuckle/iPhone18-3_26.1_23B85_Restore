@interface DMDConfigurationSource
- (NSString)description;
- (NSString)organizationIdentifier;
- (void)setOrganizationIdentifier:(id)identifier;
@end

@implementation DMDConfigurationSource

- (void)setOrganizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  organization = [(DMDConfigurationSource *)self organization];
  [organization setIdentifier:identifierCopy];
}

- (NSString)organizationIdentifier
{
  organization = [(DMDConfigurationSource *)self organization];
  identifier = [organization identifier];

  return identifier;
}

- (NSString)description
{
  v5[0] = @"identifier";
  v5[1] = @"organizationIdentifier";
  v5[2] = @"displayName";
  v5[3] = @"machServiceName";
  v5[4] = @"reportingRequirements";
  v2 = [NSArray arrayWithObjects:v5 count:5];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

@end