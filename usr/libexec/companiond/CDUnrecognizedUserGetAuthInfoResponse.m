@interface CDUnrecognizedUserGetAuthInfoResponse
- (CDUnrecognizedUserGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDUnrecognizedUserGetAuthInfoResponse

- (CDUnrecognizedUserGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDUnrecognizedUserGetAuthInfoResponse;
  v5 = [(CDUnrecognizedUserGetAuthInfoResponse *)&v9 init];
  if (v5)
  {
    CFStringGetTypeID();
    v6 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

@end