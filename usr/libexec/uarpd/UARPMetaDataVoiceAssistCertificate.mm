@interface UARPMetaDataVoiceAssistCertificate
- (UARPMetaDataVoiceAssistCertificate)init;
- (UARPMetaDataVoiceAssistCertificate)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataVoiceAssistCertificate)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataVoiceAssistCertificate

- (UARPMetaDataVoiceAssistCertificate)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistCertificate;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 76079622;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Voice Assist Certificate";
  }

  return v3;
}

- (UARPMetaDataVoiceAssistCertificate)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataVoiceAssistCertificate *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataVoiceAssistCertificate;
    v8 = [(UARPMetaData *)&v13 dataFromPlistValue:v5];
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

- (UARPMetaDataVoiceAssistCertificate)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataVoiceAssistCertificate *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    modelCertificate = v6->_modelCertificate;
    v6->_modelCertificate = v7;

    v6->super._tlvLength = [(NSData *)v6->_modelCertificate length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataVoiceAssistCertificate *)self modelCertificate];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end