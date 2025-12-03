@interface UARPTatsuManifestLocation
- (UARPTatsuManifestLocation)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation UARPTatsuManifestLocation

- (UARPTatsuManifestLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = UARPTatsuManifestLocation;
  v5 = [(UARPTatsuManifestLocation *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Payload 4CC"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [[UARPComponentTag alloc] initWithString:v6];
        componentTag = v5->_componentTag;
        v5->_componentTag = v7;
      }
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"ftabSubfile"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_ftabSubfile = [v9 BOOLValue];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"MetaData"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_metaData = [v10 BOOLValue];
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_ftabSubfile)
  {
    [v3 appendFormat:@"Manifest as FTAB Subfile "];
    [v4 appendFormat:@"of 4CC: %@", self->_componentTag];
  }

  if (self->_metaData)
  {
    [v4 appendFormat:@"Manifest as MetaData "];
    if (self->_componentTag)
    {
      [v4 appendFormat:@"of 4CC: %@", self->_componentTag];
    }
  }

  return v4;
}

@end