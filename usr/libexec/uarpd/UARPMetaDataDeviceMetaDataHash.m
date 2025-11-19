@interface UARPMetaDataDeviceMetaDataHash
- (UARPMetaDataDeviceMetaDataHash)init;
- (UARPMetaDataDeviceMetaDataHash)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataDeviceMetaDataHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataDeviceMetaDataHash

- (UARPMetaDataDeviceMetaDataHash)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceMetaDataHash;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619624;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"MetaData Hash";
  }

  return v3;
}

- (UARPMetaDataDeviceMetaDataHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataDeviceMetaDataHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataDeviceMetaDataHash;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:v5];
    metaDataHash = v7->_metaDataHash;
    v7->_metaDataHash = v8;

    v7->super._tlvLength = [(NSData *)v7->_metaDataHash length];
  }

  if (v7->_metaDataHash)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataDeviceMetaDataHash)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDeviceMetaDataHash *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    metaDataHash = v6->_metaDataHash;
    v6->_metaDataHash = v7;

    v6->super._tlvLength = [(NSData *)v6->_metaDataHash length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataDeviceMetaDataHash *)self metaDataHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end