@interface UARPMetaDataVoiceAssistHash
- (UARPMetaDataVoiceAssistHash)init;
- (UARPMetaDataVoiceAssistHash)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataVoiceAssistHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
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

- (UARPMetaDataVoiceAssistHash)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataVoiceAssistHash *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataVoiceAssistHash;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
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

- (UARPMetaDataVoiceAssistHash)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataVoiceAssistHash *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    modelHash = v6->_modelHash;
    v6->_modelHash = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelHash length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataVoiceAssistHash *)self modelHash];
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistHash;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataVoiceAssistHash *)self modelHash];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end