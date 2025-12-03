@interface RPAWDLBonjourTransportServiceMetadata
- (RPAWDLBonjourTransportServiceMetadata)initWithDictionary:(id)dictionary;
- (RPAWDLBonjourTransportServiceMetadata)initWithSingleBandModeRequired:(BOOL)required;
- (id)dictionaryRepresentation;
@end

@implementation RPAWDLBonjourTransportServiceMetadata

- (RPAWDLBonjourTransportServiceMetadata)initWithSingleBandModeRequired:(BOOL)required
{
  v8.receiver = self;
  v8.super_class = RPAWDLBonjourTransportServiceMetadata;
  v4 = [(RPTransportServiceMetadata *)&v8 initWithTransportServiceType:1];
  v5 = v4;
  if (v4)
  {
    v4->_isSingleBandModeRequired = required;
    v6 = v4;
  }

  return v5;
}

- (RPAWDLBonjourTransportServiceMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  v6 = v5;
  if (v5 && ([v5 isEqual:@"Bonjour"] & 1) != 0)
  {

    v12 = 0;
    Int64 = CFDictionaryGetInt64();
    v11.receiver = self;
    v11.super_class = RPAWDLBonjourTransportServiceMetadata;
    v8 = [(RPTransportServiceMetadata *)&v11 initWithDictionary:dictionaryCopy];
    if (v8)
    {
      v8->_isSingleBandModeRequired = Int64 != 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = RPAWDLBonjourTransportServiceMetadata;
  dictionaryRepresentation = [(RPTransportServiceMetadata *)&v7 dictionaryRepresentation];
  v4 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

  if (self->_isSingleBandModeRequired)
  {
    v5 = &kCFBooleanTrue;
  }

  else
  {
    v5 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(v4, &off_1001B7F90, *v5);

  return v4;
}

@end