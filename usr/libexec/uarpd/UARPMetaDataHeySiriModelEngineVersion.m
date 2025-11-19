@interface UARPMetaDataHeySiriModelEngineVersion
- (UARPMetaDataHeySiriModelEngineVersion)init;
- (UARPMetaDataHeySiriModelEngineVersion)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataHeySiriModelEngineVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHeySiriModelEngineVersion

- (UARPMetaDataHeySiriModelEngineVersion)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelEngineVersion;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725831;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Engine Version";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelEngineVersion)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataHeySiriModelEngineVersion *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataHeySiriModelEngineVersion;
    v8 = [(UARPMetaData *)&v13 stringFromPlistValue:v5];
    if (v8 && (v9 = [[UARPComponentVersion alloc] initWithVersionString:v8], engineVersion = v7->_engineVersion, v7->_engineVersion = v9, engineVersion, v7->_engineVersion))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UARPMetaDataHeySiriModelEngineVersion)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataHeySiriModelEngineVersion *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataHeySiriModelEngineVersion, [(UARPMetaData *)&v12 componentVersionWithLength:a3 value:a4], v8 = objc_claimAutoreleasedReturnValue(), engineVersion = v7->_engineVersion, v7->_engineVersion = v8, engineVersion, v7->_engineVersion))
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
  v3 = [(UARPMetaDataHeySiriModelEngineVersion *)self engineVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelEngineVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataHeySiriModelEngineVersion *)self engineVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end