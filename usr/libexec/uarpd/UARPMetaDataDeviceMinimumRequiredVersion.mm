@interface UARPMetaDataDeviceMinimumRequiredVersion
- (UARPMetaDataDeviceMinimumRequiredVersion)init;
- (UARPMetaDataDeviceMinimumRequiredVersion)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataDeviceMinimumRequiredVersion)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDeviceMinimumRequiredVersion

- (UARPMetaDataDeviceMinimumRequiredVersion)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceMinimumRequiredVersion;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619646;
    v2->super._tlvLength = 16;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Minimum Required Version";
  }

  return v3;
}

- (UARPMetaDataDeviceMinimumRequiredVersion)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataDeviceMinimumRequiredVersion *)self init];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [[UARPComponentVersion alloc] initWithVersionString:valueCopy];
    minimumVersion = v6->_minimumVersion;
    v6->_minimumVersion = v7;

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UARPMetaDataDeviceMinimumRequiredVersion)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataDeviceMinimumRequiredVersion *)self init];
  v7 = v6;
  if (v6 && (v12.receiver = v6, v12.super_class = UARPMetaDataDeviceMinimumRequiredVersion, [(UARPMetaData *)&v12 componentVersionWithLength:length value:value], v8 = objc_claimAutoreleasedReturnValue(), minimumVersion = v7->_minimumVersion, v7->_minimumVersion = v8, minimumVersion, v7->_minimumVersion))
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
  minimumVersion = [(UARPMetaDataDeviceMinimumRequiredVersion *)self minimumVersion];
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceMinimumRequiredVersion;
  v4 = [(UARPMetaData *)&v6 tlvValueWithComponentVersion:minimumVersion];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  minimumVersion = [(UARPMetaDataDeviceMinimumRequiredVersion *)self minimumVersion];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, minimumVersion];

  return v5;
}

@end