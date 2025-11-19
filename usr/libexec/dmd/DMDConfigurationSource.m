@interface DMDConfigurationSource
- (NSString)description;
- (NSString)organizationIdentifier;
- (void)setOrganizationIdentifier:(id)a3;
@end

@implementation DMDConfigurationSource

- (void)setOrganizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMDConfigurationSource *)self organization];
  [v5 setIdentifier:v4];
}

- (NSString)organizationIdentifier
{
  v2 = [(DMDConfigurationSource *)self organization];
  v3 = [v2 identifier];

  return v3;
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