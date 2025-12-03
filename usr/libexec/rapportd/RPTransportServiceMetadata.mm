@interface RPTransportServiceMetadata
+ (id)metadataWithDictionary:(id)dictionary;
- (RPTransportServiceMetadata)initWithDictionary:(id)dictionary;
- (RPTransportServiceMetadata)initWithTransportServiceType:(unint64_t)type;
- (id)descriptionWithLevel:(int)level;
- (id)dictionaryRepresentation;
@end

@implementation RPTransportServiceMetadata

+ (id)metadataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  v5 = v4;
  if (v4 && ([v4 isEqual:@"Bonjour"] & 1) != 0)
  {
    v6 = off_1001A9A98;
  }

  else
  {
    v6 = &off_1001A9AB8;
  }

  v7 = [objc_alloc(*v6) initWithDictionary:dictionaryCopy];

  return v7;
}

- (RPTransportServiceMetadata)initWithTransportServiceType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = RPTransportServiceMetadata;
  result = [(RPTransportServiceMetadata *)&v5 init];
  if (result)
  {
    result->_serviceType = type;
  }

  return result;
}

- (RPTransportServiceMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RPTransportServiceMetadata;
  v5 = [(RPTransportServiceMetadata *)&v10 init];
  if (v5)
  {
    v6 = dictionaryCopy;
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();

    if (v7)
    {
      if ([v7 isEqual:@"Bonjour"])
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }
    }

    else
    {
      v8 = -1;
    }

    v5->_serviceType = v8;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = @"Other";
  if (self->_serviceType == 1)
  {
    v2 = @"Bonjour";
  }

  v6 = &off_1001B7F78;
  v7 = v2;
  v3 = v2;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)descriptionWithLevel:(int)level
{
  objc_opt_class();
  NSAppendPrintF();
  v4 = 0;
  self->_serviceType;
  NSAppendPrintF();
  v5 = v4;

  return v4;
}

@end