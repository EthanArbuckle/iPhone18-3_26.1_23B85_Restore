@interface CDIncomingCallsGetAuthInfoResponse
- (CDIncomingCallsGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDIncomingCallsGetAuthInfoResponse

- (CDIncomingCallsGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CDIncomingCallsGetAuthInfoResponse;
  v5 = [(CDIncomingCallsGetAuthInfoResponse *)&v11 init];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = [CFDictionaryGetTypedValue() copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;

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
  [v3 setObject:self->_deviceIdentifier forKeyedSubscript:@"deviceIdentifier"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceIdentifier withName:@"deviceIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end