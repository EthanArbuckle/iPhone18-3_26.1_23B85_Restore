@interface CDIncomingCallsDidFinishAuthRequest
- (CDIncomingCallsDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDIncomingCallsDidFinishAuthRequest

- (CDIncomingCallsDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CDIncomingCallsDidFinishAuthRequest;
  v5 = [(CDIncomingCallsDidFinishAuthRequest *)&v17 init];
  if (v5)
  {
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
  v4 = sub_1000129F0(self->_error);
  [v3 setObject:v4 forKeyedSubscript:@"authError"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_deviceFlags];
  [v3 setObject:v5 forKeyedSubscript:@"deviceFlags"];

  [v3 setObject:self->_deviceModel forKeyedSubscript:@"deviceModel"];
  [v3 setObject:self->_deviceName forKeyedSubscript:@"deviceName"];
  v6 = [v3 copy];

  return v6;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(NSError *)self->_error description];
  [v3 appendString:v4 withName:@"error" skipIfEmpty:1];

  deviceFlags = self->_deviceFlags;
  v6 = CUPrintFlags64();
  [v3 appendString:v6 withName:@"deviceFlags"];

  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v7 = [v3 build];

  return v7;
}

@end