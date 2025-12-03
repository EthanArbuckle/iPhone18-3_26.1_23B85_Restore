@interface SFDevice
- (BOOL)cad_matchesDeviceIdentifier:(id)identifier;
@end

@implementation SFDevice

- (BOOL)cad_matchesDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsIdentifier = [(SFDevice *)self idsIdentifier];
  if ([idsIdentifier isEqualToString:identifierCopy])
  {
    v6 = 1;
  }

  else
  {
    identifier = [(SFDevice *)self identifier];
    uUIDString = [identifier UUIDString];
    if ([uUIDString isEqualToString:identifierCopy])
    {
      v6 = 1;
    }

    else
    {
      rapportIdentifier = [(SFDevice *)self rapportIdentifier];
      v6 = [rapportIdentifier isEqualToString:identifierCopy];
    }
  }

  return v6;
}

@end