@interface UARPMetaDataPersonalizationNonceHash
- (UARPMetaDataPersonalizationNonceHash)init;
- (UARPMetaDataPersonalizationNonceHash)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationNonceHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataPersonalizationNonceHash

- (UARPMetaDataPersonalizationNonceHash)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationNonceHash;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563384;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Nonce Hash";
  }

  return v3;
}

- (UARPMetaDataPersonalizationNonceHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationNonceHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationNonceHash;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:v5];
    nonceHash = v7->_nonceHash;
    v7->_nonceHash = v8;

    v7->super._tlvLength = [(NSData *)v7->_nonceHash length];
  }

  if (v7->_nonceHash)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationNonceHash)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationNonceHash *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    nonceHash = v6->_nonceHash;
    v6->_nonceHash = v7;

    v6->super._tlvLength = [(NSData *)v6->_nonceHash length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataPersonalizationNonceHash *)self nonceHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end