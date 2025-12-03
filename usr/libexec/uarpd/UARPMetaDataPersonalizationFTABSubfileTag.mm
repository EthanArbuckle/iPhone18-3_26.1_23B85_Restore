@interface UARPMetaDataPersonalizationFTABSubfileTag
- (UARPMetaDataPersonalizationFTABSubfileTag)init;
- (UARPMetaDataPersonalizationFTABSubfileTag)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationFTABSubfileTag)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationFTABSubfileTag

- (UARPMetaDataPersonalizationFTABSubfileTag)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileTag;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563375;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization FTAB Payload Tag";
  }

  return v3;
}

- (UARPMetaDataPersonalizationFTABSubfileTag)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self init];
  v7 = v6;
  if (v6)
  {
    v15.receiver = v6;
    v15.super_class = UARPMetaDataPersonalizationFTABSubfileTag;
    v8 = [(UARPMetaData *)&v15 stringFromPlistValue:valueCopy];
    v9 = v8;
    if (v8)
    {
      v7->super._tlvLength = [v8 length];
      uTF8String = [v9 UTF8String];
      v11 = [[UARPComponentTag alloc] initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
      tag = v7->_tag;
      v7->_tag = v11;

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (UARPMetaDataPersonalizationFTABSubfileTag)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self init];
  v7 = v6;
  v8 = 0;
  if (length == 4 && v6)
  {
    v9 = [[UARPComponentTag alloc] initWithChar1:*value char2:*(value + 1) char3:*(value + 2) char4:*(value + 3)];
    tag = v7->_tag;
    v7->_tag = v9;

    v8 = v7;
  }

  return v8;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self tag];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileTag;
  v4 = -[UARPMetaData tlvValueWithUInt32:](&v6, "tlvValueWithUInt32:", [v3 tag]);

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self tag];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, v4];

  return v5;
}

@end