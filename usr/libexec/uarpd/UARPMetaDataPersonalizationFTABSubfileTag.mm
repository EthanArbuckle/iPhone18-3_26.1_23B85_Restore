@interface UARPMetaDataPersonalizationFTABSubfileTag
- (UARPMetaDataPersonalizationFTABSubfileTag)init;
- (UARPMetaDataPersonalizationFTABSubfileTag)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationFTABSubfileTag)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataPersonalizationFTABSubfileTag)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self init];
  v7 = v6;
  if (v6)
  {
    v15.receiver = v6;
    v15.super_class = UARPMetaDataPersonalizationFTABSubfileTag;
    v8 = [(UARPMetaData *)&v15 stringFromPlistValue:v5];
    v9 = v8;
    if (v8)
    {
      v7->super._tlvLength = [v8 length];
      v10 = [v9 UTF8String];
      v11 = [[UARPComponentTag alloc] initWithChar1:*v10 char2:v10[1] char3:v10[2] char4:v10[3]];
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

- (UARPMetaDataPersonalizationFTABSubfileTag)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self init];
  v7 = v6;
  v8 = 0;
  if (a3 == 4 && v6)
  {
    v9 = [[UARPComponentTag alloc] initWithChar1:*a4 char2:*(a4 + 1) char3:*(a4 + 2) char4:*(a4 + 3)];
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
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataPersonalizationFTABSubfileTag *)self tag];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end