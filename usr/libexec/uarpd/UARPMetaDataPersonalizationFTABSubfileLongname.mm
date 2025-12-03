@interface UARPMetaDataPersonalizationFTABSubfileLongname
- (UARPMetaDataPersonalizationFTABSubfileLongname)init;
- (UARPMetaDataPersonalizationFTABSubfileLongname)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPersonalizationFTABSubfileLongname)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPersonalizationFTABSubfileLongname

- (UARPMetaDataPersonalizationFTABSubfileLongname)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileLongname;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563374;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization FTAB Payload Longname";
  }

  return v3;
}

- (UARPMetaDataPersonalizationFTABSubfileLongname)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPersonalizationFTABSubfileLongname *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationFTABSubfileLongname;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    longname = v7->_longname;
    v7->_longname = v8;

    v7->super._tlvLength = [(NSString *)v7->_longname length];
  }

  if (v7->_longname)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationFTABSubfileLongname)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPersonalizationFTABSubfileLongname *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    longname = v6->_longname;
    v6->_longname = v7;

    v6->super._tlvLength = [(NSString *)v6->_longname length];
  }

  return v6;
}

- (id)tlvValue
{
  longname = [(UARPMetaDataPersonalizationFTABSubfileLongname *)self longname];
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationFTABSubfileLongname;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:longname];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  longname = [(UARPMetaDataPersonalizationFTABSubfileLongname *)self longname];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, longname];

  return v5;
}

@end