@interface CDSystemAuthenticationDidFinishAuthRequest
- (CDSystemAuthenticationDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDSystemAuthenticationDidFinishAuthRequest

- (CDSystemAuthenticationDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CDSystemAuthenticationDidFinishAuthRequest;
  v5 = [(CDSystemAuthenticationDidFinishAuthRequest *)&v17 init];
  if (v5)
  {
    v5->_enabled = CFDictionaryGetInt64() != 0;
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"authError", v8);

    error = v5->_error;
    v5->_error = v9;

    v11 = NSDictionaryGetNSNumber();
    v5->_deviceFlags = [v11 unsignedIntegerValue];

    CFStringGetTypeID();
    v12 = [CFDictionaryGetTypedValue() copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v12;

    CFStringGetTypeID();
    v14 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v14;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_enabled];
  [v3 setObject:v4 forKeyedSubscript:@"authResponse"];

  v5 = sub_1000129F0(self->_error);
  [v3 setObject:v5 forKeyedSubscript:@"authError"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_deviceFlags];
  [v3 setObject:v6 forKeyedSubscript:@"deviceFlags"];

  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v7 = [v3 copy];

  return v7;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendBool:self->_enabled withName:@"enabled"];
  v5 = [v3 appendObject:self->_error withName:@"error" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

@end