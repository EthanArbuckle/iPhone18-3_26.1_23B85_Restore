@interface CDStoreAuthenticationGetAuthInfoResponse
- (CDStoreAuthenticationGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDStoreAuthenticationGetAuthInfoResponse

- (CDStoreAuthenticationGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CDStoreAuthenticationGetAuthInfoResponse;
  v5 = [(CDStoreAuthenticationGetAuthInfoResponse *)&v16 init];
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

    v10 = objc_opt_self();
    v11 = dictionaryCopy;
    v12 = [NSSet setWithObject:v10];
    v13 = sub_100017500(v11, @"storeAuthenticationRequest", v12);

    authenticationRequest = v5->_authenticationRequest;
    v5->_authenticationRequest = v13;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = sub_1000129F0(self->_authenticationRequest);
  [v3 setObject:v4 forKeyedSubscript:@"storeAuthenticationRequest"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_authenticationRequest withName:@"authenticationRequest" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end