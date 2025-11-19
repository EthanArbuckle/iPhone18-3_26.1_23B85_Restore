@interface UARPMetaDataVoiceAssistDigest
- (UARPMetaDataVoiceAssistDigest)init;
- (UARPMetaDataVoiceAssistDigest)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataVoiceAssistDigest)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
@end

@implementation UARPMetaDataVoiceAssistDigest

- (UARPMetaDataVoiceAssistDigest)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistDigest;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 76079620;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Voice Assist Digest";
  }

  return v3;
}

- (UARPMetaDataVoiceAssistDigest)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataVoiceAssistDigest *)self init];
  v7 = v6;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = UARPMetaDataVoiceAssistDigest;
    v8 = [(UARPMetaData *)&v13 dataFromPlistValue:v5];
    modelDigest = v7->_modelDigest;
    v7->_modelDigest = v8;

    v10 = v7->_modelDigest;
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

- (UARPMetaDataVoiceAssistDigest)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataVoiceAssistDigest *)self init];
  if (v6)
  {
    v7 = [[NSData alloc] initWithBytes:a4 length:a3];
    modelDigest = v6->_modelDigest;
    v6->_modelDigest = v7;

    v6->super._tlvLength = [(NSData *)v6->_modelDigest length];
  }

  return v6;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataVoiceAssistDigest *)self modelDigest];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end