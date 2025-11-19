@interface CDTVProviderGetAuthInfoResponse
- (CDTVProviderGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDTVProviderGetAuthInfoResponse

- (CDTVProviderGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CDTVProviderGetAuthInfoResponse;
  v5 = [(CDTVProviderGetAuthInfoResponse *)&v18 init];
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
    v11 = v4;
    v12 = [NSSet setWithObject:v10];
    v13 = sub_100017500(v11, @"tvProviderURL", v12);

    providerURL = v5->_providerURL;
    v5->_providerURL = v13;

    CFStringGetTypeID();
    v15 = [CFDictionaryGetTypedValue() copy];
    providerName = v5->_providerName;
    v5->_providerName = v15;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v4 = sub_1000129F0(self->_providerURL);
  [v3 setObject:v4 forKeyedSubscript:@"tvProviderURL"];

  [v3 setObject:self->_providerName forKeyedSubscript:@"tvProviderName"];
  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_deviceClass withName:@"deviceClass" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_providerURL withName:@"providerURL"];
  [v3 appendString:self->_providerName withName:@"providerName"];
  v5 = [v3 build];

  return v5;
}

@end