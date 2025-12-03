@interface UARPTatsuFTABProperties
- (UARPTatsuFTABProperties)initWithFTABPropertyDictionary:(id)dictionary;
- (id)description;
@end

@implementation UARPTatsuFTABProperties

- (UARPTatsuFTABProperties)initWithFTABPropertyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = UARPTatsuFTABProperties;
  v5 = [(UARPTatsuFTABProperties *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Payload 4CC"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v7 = [[UARPComponentTag alloc] initWithString:v6];
      componentTag = v5->_componentTag;
      v5->_componentTag = v7;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"Property Name"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[UARPMetaData metaDataTable];
        v11 = [v10 objectForKeyedSubscript:v9];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5->_infoProperty = [v11 unsignedLongValue];
            v12 = [dictionaryCopy objectForKeyedSubscript:@"Property Value"];
            v13 = v12;
            if (v12)
            {
              v14 = [v12 copy];
              propertyValue = v5->_propertyValue;
              v5->_propertyValue = v14;
            }

            goto LABEL_12;
          }
        }
      }
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v16 = v5;
LABEL_16:

  return v16;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"4CC: %@, Property 0x%08x", self->_componentTag, self->_infoProperty];
  v4 = v3;
  if (self->_propertyValue)
  {
    [v3 appendFormat:@", Value %@", self->_propertyValue];
  }

  v5 = [NSString stringWithString:v4];

  return v5;
}

@end