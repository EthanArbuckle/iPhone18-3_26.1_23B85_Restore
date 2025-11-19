@interface UARPMetaDataDeviceCompressedHeaders
- (UARPMetaDataDeviceCompressedHeaders)init;
- (UARPMetaDataDeviceCompressedHeaders)initWithLength:(unint64_t)a3 value:(void *)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataDeviceCompressedHeaders

- (UARPMetaDataDeviceCompressedHeaders)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataDeviceCompressedHeaders;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619629;
    v2->super._tlvLength = 10;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Compressed Headers";
  }

  return v3;
}

- (UARPMetaDataDeviceCompressedHeaders)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataDeviceCompressedHeaders *)self init];
  v7 = v6;
  v8 = 0;
  if (a3 == 10 && v6)
  {
    v6->_hashAlgorithm = uarpNtohs(*a4);
    v7->_actualOffset = uarpNtohl(*(a4 + 2));
    v7->_compressedLength = uarpNtohs(*(a4 + 3));
    v7->_uncompressedLength = uarpNtohs(*(a4 + 4));
    v8 = v7;
  }

  return v8;
}

- (id)tlvValue
{
  v3 = objc_opt_new();
  v9 = uarpHtons([(UARPMetaDataDeviceCompressedHeaders *)self hashAlgorithm]);
  [v3 appendBytes:&v9 length:2];
  v8 = uarpHtonl([(UARPMetaDataDeviceCompressedHeaders *)self actualOffset]);
  [v3 appendBytes:&v8 length:4];
  v7 = uarpHtons([(UARPMetaDataDeviceCompressedHeaders *)self compressedLength]);
  [v3 appendBytes:&v7 length:2];
  v6 = uarpHtons([(UARPMetaDataDeviceCompressedHeaders *)self uncompressedLength]);
  [v3 appendBytes:&v6 length:2];
  v4 = [[NSData alloc] initWithData:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: Algorithm %u, Actual Offset %u, Compressed Length %u, Uncompressed Length %u>", v3, [(UARPMetaDataDeviceCompressedHeaders *)self hashAlgorithm], [(UARPMetaDataDeviceCompressedHeaders *)self actualOffset], [(UARPMetaDataDeviceCompressedHeaders *)self compressedLength], [(UARPMetaDataDeviceCompressedHeaders *)self uncompressedLength]];

  return v4;
}

@end