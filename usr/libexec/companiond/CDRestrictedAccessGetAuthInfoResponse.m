@interface CDRestrictedAccessGetAuthInfoResponse
- (CDRestrictedAccessGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDRestrictedAccessGetAuthInfoResponse

- (CDRestrictedAccessGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CDRestrictedAccessGetAuthInfoResponse;
  v5 = [(CDRestrictedAccessGetAuthInfoResponse *)&v14 init];
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
    currentUserName = v5->_currentUserName;
    v5->_currentUserName = v10;

    v12 = NSDictionaryGetNSNumber();
    v5->_restrictionType = [v12 integerValue];
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [v3 setObject:self->_currentUserName forKeyedSubscript:@"currentUserName"];
  v4 = [NSNumber numberWithInteger:self->_restrictionType];
  [v3 setObject:v4 forKeyedSubscript:@"restrictionType"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  [v3 appendString:self->_currentUserName withName:@"currentUserName" skipIfEmpty:1];
  v4 = [v3 appendInteger:self->_restrictionType withName:@"restrictionType"];
  v5 = [v3 build];

  return v5;
}

@end