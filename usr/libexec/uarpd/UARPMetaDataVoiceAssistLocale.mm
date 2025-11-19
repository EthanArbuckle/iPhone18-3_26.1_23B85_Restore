@interface UARPMetaDataVoiceAssistLocale
- (UARPMetaDataVoiceAssistLocale)init;
- (UARPMetaDataVoiceAssistLocale)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataVoiceAssistLocale)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataVoiceAssistLocale

- (UARPMetaDataVoiceAssistLocale)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistLocale;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 76079617;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Voice Assist Locale";
  }

  return v3;
}

- (UARPMetaDataVoiceAssistLocale)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataVoiceAssistLocale *)self init];
  v7 = v6;
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = UARPMetaDataVoiceAssistLocale;
    v8 = [(UARPMetaData *)&v12 stringFromPlistValue:v5];
    modelLocale = v7->_modelLocale;
    v7->_modelLocale = v8;

    v7->super._tlvLength = [(NSString *)v7->_modelLocale length];
  }

  if (v7->_modelLocale)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPMetaDataVoiceAssistLocale)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataVoiceAssistLocale *)self init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytes:a4 length:a3 encoding:4];
    modelLocale = v6->_modelLocale;
    v6->_modelLocale = v7;

    v6->super._tlvLength = [(NSString *)v6->_modelLocale length];
  }

  return v6;
}

- (id)tlvValue
{
  v3 = [(UARPMetaDataVoiceAssistLocale *)self modelLocale];
  v6.receiver = self;
  v6.super_class = UARPMetaDataVoiceAssistLocale;
  v4 = [(UARPMetaData *)&v6 tlvValueWithString:v3];

  return v4;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataVoiceAssistLocale *)self modelLocale];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v3, v4];

  return v5;
}

@end