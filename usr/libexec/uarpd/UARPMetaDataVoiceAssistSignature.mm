@interface UARPMetaDataVoiceAssistSignature
- (UARPMetaDataVoiceAssistSignature)init;
- (UARPMetaDataVoiceAssistSignature)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataVoiceAssistSignature)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataVoiceAssistSignature

- (UARPMetaDataVoiceAssistSignature)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistSignature;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 76079621;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Voice Assist Signature";
  }

  return v3;
}

- (UARPMetaDataVoiceAssistSignature)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataVoiceAssistSignature *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataVoiceAssistSignature;
    v8 = [(UARPMetaData *)&v13 dataFromPlistValue:v5];
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

- (UARPMetaDataVoiceAssistSignature)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataVoiceAssistSignature *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    modelSignature = v6->_modelSignature;
    v6->_modelSignature = v7;

    v6->super._tlvLength = [(NSData *)v6->_modelSignature length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataVoiceAssistSignature *)self modelSignature];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end