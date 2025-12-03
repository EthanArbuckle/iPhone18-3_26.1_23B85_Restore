@interface UARPTatsuManifestProperties
- (UARPTatsuManifestProperties)initWithManifestPropertyDictionary:(id)dictionary;
- (id)description;
@end

@implementation UARPTatsuManifestProperties

- (UARPTatsuManifestProperties)initWithManifestPropertyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = UARPTatsuManifestProperties;
  v5 = [(UARPTatsuManifestProperties *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Key Name"];
    if (!v6)
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v7 = [v6 copy];
    keyName = v5->_keyName;
    v5->_keyName = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"Payload 4CC"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_18:

LABEL_19:
        v19 = 0;
        goto LABEL_20;
      }

      v10 = [[UARPComponentTag alloc] initWithString:v9];
      componentTag = v5->_componentTag;
      v5->_componentTag = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Property Name"];
    if (!v12)
    {
LABEL_12:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"Property Value"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 copy];
        propertyValue = v5->_propertyValue;
        v5->_propertyValue = v17;
      }

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[UARPMetaData metaDataTable];
      v14 = [v13 objectForKeyedSubscript:v12];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5->_infoProperty = [v14 unsignedLongValue];

          goto LABEL_12;
        }
      }
    }

    goto LABEL_18;
  }

LABEL_15:
  v19 = v5;
LABEL_20:

  return v19;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"Key Name: %@, 4CC: %@, TLV 0x%08x", self->_keyName, self->_componentTag, self->_infoProperty];
  v4 = v3;
  if (self->_propertyValue)
  {
    [v3 appendFormat:@", Static Value %@", self->_propertyValue];
  }

  v5 = [NSString stringWithString:v4];

  return v5;
}

@end