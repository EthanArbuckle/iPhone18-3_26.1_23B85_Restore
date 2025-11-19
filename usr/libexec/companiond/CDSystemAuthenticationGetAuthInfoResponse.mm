@interface CDSystemAuthenticationGetAuthInfoResponse
- (CDSystemAuthenticationGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDSystemAuthenticationGetAuthInfoResponse

- (CDSystemAuthenticationGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDSystemAuthenticationGetAuthInfoResponse;
  v5 = [(CDSystemAuthenticationGetAuthInfoResponse *)&v11 init];
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
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

@end