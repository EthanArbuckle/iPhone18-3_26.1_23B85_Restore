@interface UARPMetaDataVoiceAssistHash
- (UARPMetaDataVoiceAssistHash)init;
- (UARPMetaDataVoiceAssistHash)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataVoiceAssistHash)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataVoiceAssistHash

- (UARPMetaDataVoiceAssistHash)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistHash;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 76079618;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Voice Assist Hash";
  }

  return v3;
}

- (UARPMetaDataVoiceAssistHash)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataVoiceAssistHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataVoiceAssistHash;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:valueCopy];
    modelHash = v7->_modelHash;
    v7->_modelHash = v8;

    v7->super._tlvLength = [(NSString *)v7->_modelHash length];
  }

  if (v7->_modelHash)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataVoiceAssistHash)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataVoiceAssistHash *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:value length:length encoding:4];
    modelHash = v6->_modelHash;
    v6->_modelHash = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelHash length];
  }

  return v6;
}

- (id)tlvValue
{
  modelHash = [(UARPMetaDataVoiceAssistHash *)self modelHash];
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistHash;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:modelHash];

  return v4;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  modelHash = [(UARPMetaDataVoiceAssistHash *)self modelHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", tlvName, modelHash];

  return v5;
}

@end