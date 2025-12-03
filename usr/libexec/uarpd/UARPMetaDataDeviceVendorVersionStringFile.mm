@interface UARPMetaDataDeviceVendorVersionStringFile
- (UARPMetaDataDeviceVendorVersionStringFile)init;
- (UARPMetaDataDeviceVendorVersionStringFile)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataDeviceVendorVersionStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDeviceVendorVersionStringFile

- (UARPMetaDataDeviceVendorVersionStringFile)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceVendorVersionStringFile;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619618;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Vendor Version String File";
  }

  return v3;
}

- (UARPMetaDataDeviceVendorVersionStringFile)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  lCopy = l;
  v8 = [(UARPMetaDataDeviceVendorVersionStringFile *)self init];
  v9 = v8;
  if (v8)
  {
    v21.receiver = v8;
    v21.super_class = UARPMetaDataDeviceVendorVersionStringFile;
    v10 = [(UARPMetaData *)&v21 stringFromPlistValue:valueCopy];
    if (v10)
    {
      path = [lCopy path];
      v22[0] = path;
      v22[1] = v10;
      v12 = [NSArray arrayWithObjects:v22 count:2];
      v13 = [NSString pathWithComponents:v12];

      v14 = [NSURL fileURLWithPath:v13];
      v15 = [NSString stringWithContentsOfURL:v14 encoding:4 error:0];
      v16 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v17 = [v15 stringByTrimmingCharactersInSet:v16];

      vendorVersionString = v9->_vendorVersionString;
      v9->_vendorVersionString = v17;

      v19 = v9;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (UARPMetaDataDeviceVendorVersionStringFile)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataDeviceVendorVersionStringFile *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    vendorVersionString = v6->_vendorVersionString;
    v6->_vendorVersionString = v7;

    v6->super._tlvLength = [(NSString *)v6->_vendorVersionString length];
  }

  return v6;
}

- (id)tlvValue
{
  vendorVersionString = [(UARPMetaDataDeviceVendorVersionStringFile *)self vendorVersionString];
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceVendorVersionStringFile;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:vendorVersionString];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  vendorVersionString = [(UARPMetaDataDeviceVendorVersionStringFile *)self vendorVersionString];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, vendorVersionString];

  return v5;
}

@end