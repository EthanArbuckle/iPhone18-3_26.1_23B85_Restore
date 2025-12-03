@interface DMDConfigurationSourceRepresentation
- (DMDConfigurationSourceRepresentation)initWithConfigurationSource:(id)source;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DMDConfigurationSourceRepresentation

- (DMDConfigurationSourceRepresentation)initWithConfigurationSource:(id)source
{
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = DMDConfigurationSourceRepresentation;
  v5 = [(DMDConfigurationSourceRepresentation *)&v19 init];
  if (v5)
  {
    identifier = [sourceCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    organizationIdentifier = [sourceCopy organizationIdentifier];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = organizationIdentifier;

    displayName = [sourceCopy displayName];
    displayName = v5->_displayName;
    v5->_displayName = displayName;

    machServiceName = [sourceCopy machServiceName];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = machServiceName;

    listenerEndpoint = [sourceCopy listenerEndpoint];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = listenerEndpoint;

    reportingRequirements = [sourceCopy reportingRequirements];
    reportingRequirements = v5->_reportingRequirements;
    v5->_reportingRequirements = reportingRequirements;
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