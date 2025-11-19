@interface DMDConfigurationSourceRepresentation
- (DMDConfigurationSourceRepresentation)initWithConfigurationSource:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DMDConfigurationSourceRepresentation

- (DMDConfigurationSourceRepresentation)initWithConfigurationSource:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DMDConfigurationSourceRepresentation;
  v5 = [(DMDConfigurationSourceRepresentation *)&v19 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 organizationIdentifier];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v8;

    v10 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [v4 machServiceName];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v12;

    v14 = [v4 listenerEndpoint];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v14;

    v16 = [v4 reportingRequirements];
    reportingRequirements = v5->_reportingRequirements;
    v5->_reportingRequirements = v16;
  }

  return v5;
}

- (NSString)description
{
  v5[0] = @"identifier";
  v5[1] = @"displayName";
  v5[2] = @"machServiceName";
  v2 = [NSArray arrayWithObjects:v5 count:3];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (NSString)debugDescription
{
  v5[0] = @"identifier";
  v5[1] = @"displayName";
  v5[2] = @"machServiceName";
  v5[3] = @"listenerEndpoint";
  v5[4] = @"reportingRequirements";
  v2 = [NSArray arrayWithObjects:v5 count:5];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

@end