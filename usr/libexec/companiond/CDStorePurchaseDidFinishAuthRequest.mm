@interface CDStorePurchaseDidFinishAuthRequest
- (CDStorePurchaseDidFinishAuthRequest)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDStorePurchaseDidFinishAuthRequest

- (CDStorePurchaseDidFinishAuthRequest)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = CDStorePurchaseDidFinishAuthRequest;
  v5 = [(CDStorePurchaseDidFinishAuthRequest *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = dictionaryCopy;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"purchaseResult", v8);

    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v9;

    v11 = objc_opt_self();
    v12 = v7;
    v13 = [NSSet setWithObject:v11];
    v14 = sub_100017500(v12, @"authError", v13);

    error = v5->_error;
    v5->_error = v14;

    v16 = NSDictionaryGetNSNumber();
    v5->_deviceFlags = [v16 unsignedIntegerValue];

    CFStringGetTypeID();
    v17 = [CFDictionaryGetTypedValue() copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v17;

    CFStringGetTypeID();
    v19 = [CFDictionaryGetTypedValue() copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v19;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_purchaseResult);
  [v3 setObject:v4 forKeyedSubscript:@"purchaseResult"];

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
  v4 = [v3 appendObject:self->_purchaseResult withName:@"purchaseResult" skipIfNil:1];
  v5 = [v3 appendObject:self->_error withName:@"error" skipIfNil:1];
  deviceFlags = self->_deviceFlags;
  v7 = CUPrintFlags64();
  [v3 appendString:v7 withName:@"deviceFlags"];

  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end