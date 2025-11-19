@interface UARPMetaDataDeviceVendorVersionStringFile
- (UARPMetaDataDeviceVendorVersionStringFile)init;
- (UARPMetaDataDeviceVendorVersionStringFile)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataDeviceVendorVersionStringFile)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataDeviceVendorVersionStringFile)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPMetaDataDeviceVendorVersionStringFile *)self init];
  v9 = v8;
  if (v8)
  {
    v21.receiver = v8;
    v21.super_class = UARPMetaDataDeviceVendorVersionStringFile;
    v10 = [(UARPMetaData *)&v21 stringFromPlistValue:v6];
    if (v10)
    {
      v11 = [v7 path];
      v22[0] = v11;
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

- (UARPMetaDataDeviceVendorVersionStringFile)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDeviceVendorVersionStringFile *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    vendorVersionString = v6->_vendorVersionString;
    v6->_vendorVersionString = v7;

    v6->super._tlvLength = [(NSString *)v6->_vendorVersionString length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataDeviceVendorVersionStringFile *)self vendorVersionString];
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceVendorVersionStringFile;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataDeviceVendorVersionStringFile *)self vendorVersionString];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end