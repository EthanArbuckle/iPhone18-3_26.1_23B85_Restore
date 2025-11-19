@interface CDGetInfoRequest
- (CDGetInfoRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDGetInfoRequest

- (CDGetInfoRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CDGetInfoRequest;
  v5 = [(CDGetInfoRequest *)&v20 init];
  if (v5)
  {
    CFDataGetTypeID();
    v6 = [CFDictionaryGetTypedValue() copy];
    storeAccountToken = v5->_storeAccountToken;
    v5->_storeAccountToken = v6;

    CFDataGetTypeID();
    v8 = [CFDictionaryGetTypedValue() copy];
    appleAccountToken = v5->_appleAccountToken;
    v5->_appleAccountToken = v8;

    CFStringGetTypeID();
    v10 = [CFDictionaryGetTypedValue() copy];
    nonce = v5->_nonce;
    v5->_nonce = v10;

    v12 = NSDictionaryGetNSNumber();
    v5->_deviceFlags = [v12 unsignedIntegerValue];

    CFStringGetTypeID();
    v13 = [CFDictionaryGetTypedValue() copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v13;

    CFStringGetTypeID();
    v15 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v15;

    CFStringGetTypeID();
    v17 = [CFDictionaryGetTypedValue() copy];
    deviceBuildVersion = v5->_deviceBuildVersion;
    v5->_deviceBuildVersion = v17;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:self->_storeAccountToken forKeyedSubscript:@"storeAccountToken"];
  [v3 setObject:self->_appleAccountToken forKeyedSubscript:@"appleAccountToken"];
  [v3 setObject:self->_nonce forKeyedSubscript:@"nonce"];
  v4 = [NSNumber numberWithUnsignedInteger:self->_deviceFlags];
  [v3 setObject:v4 forKeyedSubscript:@"deviceFlags"];

  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  [v3 setObject:self->_deviceBuildVersion forKeyedSubscript:@"deviceBuildVersion"];
  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_storeAccountToken withName:@"storeAccountToken" skipIfNil:1];
  v5 = [v3 appendObject:self->_appleAccountToken withName:@"appleAccountToken" skipIfNil:1];
  [v3 appendString:self->_nonce withName:@"nonce" skipIfEmpty:1];
  deviceFlags = self->_deviceFlags;
  v7 = CUPrintFlags64();
  [v3 appendString:v7 withName:@"deviceFlags"];

  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  [v3 appendString:self->_deviceBuildVersion withName:@"deviceBuildVersion" skipIfEmpty:1];
  v8 = [v3 build];

  return v8;
}

@end