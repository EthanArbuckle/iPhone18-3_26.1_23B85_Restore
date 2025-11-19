@interface UARPMetaDataPersonalizationNonce
- (UARPMetaDataPersonalizationNonce)init;
- (UARPMetaDataPersonalizationNonce)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataPersonalizationNonce)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataPersonalizationNonce

- (UARPMetaDataPersonalizationNonce)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPersonalizationNonce;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -2001563385;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Personalization Nonce";
  }

  return v3;
}

- (UARPMetaDataPersonalizationNonce)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataPersonalizationNonce *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataPersonalizationNonce;
    v8 = [(UARPMetaData *)&v12 dataFromPlistValue:v5];
    nonce = v7->_nonce;
    v7->_nonce = v8;

    v7->super._tlvLength = [(NSData *)v7->_nonce length];
  }

  if (v7->_nonce)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataPersonalizationNonce)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataPersonalizationNonce *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    nonce = v6->_nonce;
    v6->_nonce = v7;

    v6->super._tlvLength = [(NSData *)v6->_nonce length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataPersonalizationNonce *)self nonce];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end