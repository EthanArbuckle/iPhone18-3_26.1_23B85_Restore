@interface UARPMetaDataHeySiriModelCertificate
- (UARPMetaDataHeySiriModelCertificate)init;
- (UARPMetaDataHeySiriModelCertificate)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataHeySiriModelCertificate)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
@end

@implementation UARPMetaDataHeySiriModelCertificate

- (UARPMetaDataHeySiriModelCertificate)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelCertificate;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725830;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Certificate";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelCertificate)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataHeySiriModelCertificate *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataHeySiriModelCertificate;
    v8 = [(UARPMetaData *)&v13 dataFromPlistValue:valueCopy];
    modelCertificate = v7->_modelCertificate;
    v7->_modelCertificate = v8;

    v10 = v7->_modelCertificate;
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

- (UARPMetaDataHeySiriModelCertificate)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataHeySiriModelCertificate *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:value length:length];
    modelCertificate = v6->_modelCertificate;
    v6->_modelCertificate = v7;

    v6->super._tlvLength = [(NSData *)v6->_modelCertificate length];
  }

  return v6;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  modelCertificate = [(UARPMetaDataHeySiriModelCertificate *)self modelCertificate];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, modelCertificate];

  return v5;
}

@end