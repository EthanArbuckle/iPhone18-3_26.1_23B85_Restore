@interface UARPMetaDataComposeBVERStringFile
- (UARPMetaDataComposeBVERStringFile)init;
- (UARPMetaDataComposeBVERStringFile)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataComposeBVERStringFile)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataComposeBVERStringFile

- (UARPMetaDataComposeBVERStringFile)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeBVERStringFile;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -1128766714;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Version BVER File";
  }

  return v3;
}

- (UARPMetaDataComposeBVERStringFile)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPMetaDataComposeBVERStringFile *)self init];
  v9 = v8;
  if (v8)
  {
    v20.receiver = v8;
    v20.super_class = UARPMetaDataComposeBVERStringFile;
    v10 = [(UARPMetaData *)&v20 stringFromPlistValue:v6];
    if (v10)
    {
      v11 = [v7 path];
      v21[0] = v11;
      v21[1] = v10;
      v12 = [NSArray arrayWithObjects:v21 count:2];
      v13 = [NSString pathWithComponents:v12];

      v14 = [NSURL fileURLWithPath:v13];
      v15 = [NSString stringWithContentsOfURL:v14 encoding:4 error:0];
      v16 = [[UARPComponentVersion alloc] initWithBVERString:v15];
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

- (UARPMetaDataComposeBVERStringFile)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataComposeBVERStringFile *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataComposeBVERStringFile, [(UARPMetaData *)&v12 componentVersionWithLength:a3 value:a4], v8 = objc_claimAutoreleasedReturnValue(), version = v7->_version, v7->_version = v8, version, v7->_version))
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
  v3 = [(UARPMetaDataComposeBVERStringFile *)self version];
  v6.receiver = self;
  v6.super_class = UARPMetaDataComposeBVERStringFile;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataComposeBVERStringFile *)self version];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end