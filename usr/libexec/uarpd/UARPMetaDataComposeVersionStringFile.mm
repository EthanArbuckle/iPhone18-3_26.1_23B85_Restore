@interface UARPMetaDataComposeVersionStringFile
- (UARPMetaDataComposeVersionStringFile)init;
- (UARPMetaDataComposeVersionStringFile)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataComposeVersionStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataComposeVersionStringFile

- (UARPMetaDataComposeVersionStringFile)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeVersionStringFile;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1128766715;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Version File";
  }

  return v3;
}

- (UARPMetaDataComposeVersionStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  lCopy = l;
  v8 = [(UARPMetaDataComposeVersionStringFile *)self init];
  v9 = v8;
  if (v8)
  {
    v20.receiver = v8;
    v20.super_class = UARPMetaDataComposeVersionStringFile;
    v10 = [(UARPMetaData *)&v20 stringFromPlistValue:valueCopy];
    if (v10)
    {
      path = [lCopy path];
      v21[0] = path;
      v21[1] = v10;
      v12 = [NSArray arrayWithObjects:v21 count:2];
      v13 = [NSString pathWithComponents:v12];

      v14 = [NSURL fileURLWithPath:v13];
      v15 = [NSString stringWithContentsOfURL:v14 encoding:4 error:0];
      v16 = [[UARPComponentVersion alloc] initWithVersionString:v15];
      version = v9->_version;
      v9->_version = v16;

      v18 = v9;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (UARPMetaDataComposeVersionStringFile)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataComposeVersionStringFile *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataComposeVersionStringFile, [(UARPMetaData *)&v12 componentVersionWithLength:length value:value], v8 = objc_claimAutoreleasedReturnValue(), version = v7->_version, v7->_version = v8, version, v7->_version))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tlvValue
{
  version = [(UARPMetaDataComposeVersionStringFile *)self version];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeVersionStringFile;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:version];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  version = [(UARPMetaDataComposeVersionStringFile *)self version];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, version];

  return v5;
}

@end