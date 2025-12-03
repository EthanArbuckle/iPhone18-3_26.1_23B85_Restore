@interface CDDeviceUpdateEvent
- (CDDeviceUpdateEvent)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDDeviceUpdateEvent

- (CDDeviceUpdateEvent)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CDDeviceUpdateEvent;
  v5 = [(CDDeviceUpdateEvent *)&v12 init];
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
  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  deviceFlags = self->_deviceFlags;
  v5 = CUPrintFlags64();
  [v3 appendString:v5 withName:@"deviceFlags"];

  [v3 appendString:self->_deviceModel withName:@"deviceModel" skipIfEmpty:1];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end