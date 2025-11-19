@interface SFDevice
- (BOOL)cad_matchesDeviceIdentifier:(id)a3;
@end

@implementation SFDevice

- (BOOL)cad_matchesDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFDevice *)self idsIdentifier];
  if ([v5 isEqualToString:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SFDevice *)self identifier];
    v8 = [v7 UUIDString];
    if ([v8 isEqualToString:v4])
    {
      v6 = 1;
    }

    else
    {
      v9 = [(SFDevice *)self rapportIdentifier];
      v6 = [v9 isEqualToString:v4];
    }
  }

  return v6;
}

@end