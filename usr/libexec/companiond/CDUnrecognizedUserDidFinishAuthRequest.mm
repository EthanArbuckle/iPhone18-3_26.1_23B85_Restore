@interface CDUnrecognizedUserDidFinishAuthRequest
- (CDUnrecognizedUserDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDUnrecognizedUserDidFinishAuthRequest

- (CDUnrecognizedUserDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CDUnrecognizedUserDidFinishAuthRequest;
  v5 = [(CDUnrecognizedUserDidFinishAuthRequest *)&v17 init];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v5->_deviceFlags = [v6 unsignedIntegerValue];

    CFStringGetTypeID();
    v7 = [CFDictionaryGetTypedValue() copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v7;

    CFStringGetTypeID();
    v9 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v9;

    v11 = objc_opt_self();
    v12 = v4;
    v13 = [NSSet setWithObject:v11];
    v14 = sub_100017500(v12, @"authError", v13);

    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:self->_deviceFlags];
  [v3 setObject:v4 forKeyedSubscript:@"deviceFlags"];

  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v5 = sub_1000129F0(self->_error);
  [v3 setObject:v5 forKeyedSubscript:@"authError"];

  v6 = [v3 copy];

  return v6;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  deviceFlags = self->_deviceFlags;
  v5 = CUPrintFlags64();
  [v3 appendString:v5 withName:@"deviceFlags"];

  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v6 = [(NSError *)self->_error description];
  [v3 appendString:v6 withName:@"error" skipIfEmpty:1];

  v7 = [v3 build];

  return v7;
}

@end