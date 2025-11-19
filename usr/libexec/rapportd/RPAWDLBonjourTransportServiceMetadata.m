@interface RPAWDLBonjourTransportServiceMetadata
- (RPAWDLBonjourTransportServiceMetadata)initWithDictionary:(id)a3;
- (RPAWDLBonjourTransportServiceMetadata)initWithSingleBandModeRequired:(BOOL)a3;
- (id)dictionaryRepresentation;
@end

@implementation RPAWDLBonjourTransportServiceMetadata

- (RPAWDLBonjourTransportServiceMetadata)initWithSingleBandModeRequired:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RPAWDLBonjourTransportServiceMetadata;
  v4 = [(RPTransportServiceMetadata *)&v8 initWithTransportServiceType:1];
  v5 = v4;
  if (v4)
  {
    v4->_isSingleBandModeRequired = a3;
    v6 = v4;
  }

  return v5;
}

- (RPAWDLBonjourTransportServiceMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  v6 = v5;
  if (v5 && ([v5 isEqual:@"Bonjour"] & 1) != 0)
  {

    v12 = 0;
    Int64 = CFDictionaryGetInt64();
    v11.receiver = self;
    v11.super_class = RPAWDLBonjourTransportServiceMetadata;
    v8 = [(RPTransportServiceMetadata *)&v11 initWithDictionary:v4];
    if (v8)
    {
      v8->_isSingleBandModeRequired = Int64 != 0;
    }

    self = v8;
    v9 = self;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = RPAWDLBonjourTransportServiceMetadata;
  v3 = [(RPTransportServiceMetadata *)&v7 dictionaryRepresentation];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

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