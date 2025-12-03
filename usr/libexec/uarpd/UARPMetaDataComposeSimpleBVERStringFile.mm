@interface UARPMetaDataComposeSimpleBVERStringFile
- (UARPMetaDataComposeSimpleBVERStringFile)init;
- (UARPMetaDataComposeSimpleBVERStringFile)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataComposeSimpleBVERStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataComposeSimpleBVERStringFile

- (UARPMetaDataComposeSimpleBVERStringFile)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeSimpleBVERStringFile;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1128766711;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Version Simple BVER File";
  }

  return v3;
}

- (UARPMetaDataComposeSimpleBVERStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  lCopy = l;
  v8 = [(UARPMetaDataComposeSimpleBVERStringFile *)self init];
  v9 = v8;
  if (v8)
  {
    v20.receiver = v8;
    v20.super_class = UARPMetaDataComposeSimpleBVERStringFile;
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
      v16 = [[UARPComponentVersion alloc] initWithSimpleBVERString:v15];
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

- (UARPMetaDataComposeSimpleBVERStringFile)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataComposeSimpleBVERStringFile *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataComposeSimpleBVERStringFile, [(UARPMetaData *)&v12 componentVersionWithLength:length value:value], v8 = objc_claimAutoreleasedReturnValue(), version = v7->_version, v7->_version = v8, version, v7->_version))
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
  version = [(UARPMetaDataComposeSimpleBVERStringFile *)self version];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeSimpleBVERStringFile;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:version];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  version = [(UARPMetaDataComposeSimpleBVERStringFile *)self version];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, version];

  return v5;
}

@end