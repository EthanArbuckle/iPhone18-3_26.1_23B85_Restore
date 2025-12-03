@interface CDSharingGetAuthInfoResponse
- (CDSharingGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDSharingGetAuthInfoResponse

- (CDSharingGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CDSharingGetAuthInfoResponse;
  v5 = [(CDSharingGetAuthInfoResponse *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sharingData"];
    requestData = v5->_requestData;
    v5->_requestData = v6;

    CFStringGetTypeID();
    v8 = [CFDictionaryGetTypedValue() copy];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v8;

    CFStringGetTypeID();
    v10 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_requestData forKeyedSubscript:@"sharingData"];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_requestData withName:@"requestData" skipIfNil:1];
  v5 = [v3 appendObject:self->_deviceClass withName:@"deviceClass" skipIfNil:1];
  v6 = [v3 appendObject:self->_deviceName withName:@"deviceName" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end