@interface CDGetNotifInfoResponse
- (CDGetNotifInfoResponse)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDGetNotifInfoResponse

- (CDGetNotifInfoResponse)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CDGetNotifInfoResponse;
  v5 = [(CDGetNotifInfoResponse *)&v13 init];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = [CFDictionaryGetTypedValue() copy];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v6;

    CFStringGetTypeID();
    v8 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    CFStringGetTypeID();
    v10 = [CFDictionaryGetTypedValue() copy];
    appName = v5->_appName;
    v5->_appName = v10;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [v3 setObject:self->_appName forKeyedSubscript:@"appName"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  [v3 appendString:self->_appName withName:@"appName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end