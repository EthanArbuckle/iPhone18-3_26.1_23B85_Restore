@interface CDContinueOnGetAuthInfoResponse
- (CDContinueOnGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDContinueOnGetAuthInfoResponse

- (CDContinueOnGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CDContinueOnGetAuthInfoResponse;
  v5 = [(CDContinueOnGetAuthInfoResponse *)&v19 init];
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
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v10;

    CFStringGetTypeID();
    v12 = [CFDictionaryGetTypedValue() copy];
    notificationBodyOverride = v5->_notificationBodyOverride;
    v5->_notificationBodyOverride = v12;

    CFStringGetTypeID();
    v14 = [CFDictionaryGetTypedValue() copy];
    notificationTitleOverride = v5->_notificationTitleOverride;
    v5->_notificationTitleOverride = v14;

    CFDataGetTypeID();
    v16 = [CFDictionaryGetTypedValue() copy];
    requestTypeData = v5->_requestTypeData;
    v5->_requestTypeData = v16;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_notificationBodyOverride forKeyedSubscript:@"notificationBodyOverride"];
  [v3 setObject:self->_notificationTitleOverride forKeyedSubscript:@"notificationTitleOverride"];
  [v3 setObject:self->_requestTypeData forKeyedSubscript:@"requestTypeData"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_notificationBodyOverride withName:@"notificationBodyOverride" skipIfEmpty:1];
  [v3 appendString:self->_notificationTitleOverride withName:@"notificationTitleOverride" skipIfEmpty:1];
  v4 = [(NSData *)self->_requestTypeData description];
  [v3 appendString:v4 withName:@"requestTypeData" skipIfEmpty:1];

  v5 = [v3 build];

  return v5;
}

@end