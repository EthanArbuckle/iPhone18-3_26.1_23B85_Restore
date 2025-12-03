@interface UARPMetaDataHeySiriModelSignature
- (UARPMetaDataHeySiriModelSignature)init;
- (UARPMetaDataHeySiriModelSignature)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHeySiriModelSignature)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataHeySiriModelSignature

- (UARPMetaDataHeySiriModelSignature)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelSignature;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725829;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Signature";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelSignature)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHeySiriModelSignature *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataHeySiriModelSignature;
    v8 = [(UARPMetaData *)&v13 dataFromPlistValue:valueCopy];
    modelSignature = v7->_modelSignature;
    v7->_modelSignature = v8;

    v10 = v7->_modelSignature;
    if (!v10)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v7->super._tlvLength = [(NSData *)v10 length];
  }

  v11 = v7;
LABEL_6:

  return v11;
}

- (UARPMetaDataHeySiriModelSignature)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHeySiriModelSignature *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    modelSignature = v6->_modelSignature;
    v6->_modelSignature = v7;

    v6->super._tlvLength = [(NSData *)v6->_modelSignature length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  modelSignature = [(UARPMetaDataHeySiriModelSignature *)self modelSignature];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, modelSignature];

  return v5;
}

@end