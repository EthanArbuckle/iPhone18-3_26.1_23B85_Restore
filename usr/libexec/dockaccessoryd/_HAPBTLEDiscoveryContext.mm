@interface _HAPBTLEDiscoveryContext
- (BOOL)isComplete;
- (_HAPBTLEDiscoveryContext)init;
- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)type;
- (void)reset;
@end

@implementation _HAPBTLEDiscoveryContext

- (_HAPBTLEDiscoveryContext)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)type
{
  v25.receiver = self;
  v25.super_class = _HAPBTLEDiscoveryContext;
  v4 = [(_HAPBTLEDiscoveryContext *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->_discoveryType = type;
    v6 = +[NSMutableArray array];
    discoveringServices = v5->_discoveringServices;
    v5->_discoveringServices = v6;

    v8 = +[NSMutableArray array];
    discoveringCharacteristics = v5->_discoveringCharacteristics;
    v5->_discoveringCharacteristics = v8;

    v10 = +[NSMutableArray array];
    readingCharacteristics = v5->_readingCharacteristics;
    v5->_readingCharacteristics = v10;

    v12 = +[NSMutableArray array];
    discoveringDescriptors = v5->_discoveringDescriptors;
    v5->_discoveringDescriptors = v12;

    v14 = +[NSMutableArray array];
    readingDescriptors = v5->_readingDescriptors;
    v5->_readingDescriptors = v14;

    v16 = +[NSMutableArray array];
    readingSignatureCharacteristics = v5->_readingSignatureCharacteristics;
    v5->_readingSignatureCharacteristics = v16;

    v18 = +[NSMutableArray array];
    readingSignatureServices = v5->_readingSignatureServices;
    v5->_readingSignatureServices = v18;

    v20 = +[NSMapTable weakToStrongObjectsMapTable];
    characteristicSignatures = v5->_characteristicSignatures;
    v5->_characteristicSignatures = v20;

    v22 = +[NSMapTable weakToStrongObjectsMapTable];
    serviceSignatures = v5->_serviceSignatures;
    v5->_serviceSignatures = v22;
  }

  return v5;
}

- (void)reset
{
  [(_HAPBTLEDiscoveryContext *)self setDiscovering:0];
  discoveringServices = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  [discoveringServices removeAllObjects];

  discoveringCharacteristics = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
  [discoveringCharacteristics removeAllObjects];

  readingCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
  [readingCharacteristics removeAllObjects];

  discoveringDescriptors = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
  [discoveringDescriptors removeAllObjects];

  readingDescriptors = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
  [readingDescriptors removeAllObjects];

  readingSignatureCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
  [readingSignatureCharacteristics removeAllObjects];

  readingSignatureServices = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
  [readingSignatureServices removeAllObjects];

  characteristicSignatures = [(_HAPBTLEDiscoveryContext *)self characteristicSignatures];
  [characteristicSignatures removeAllObjects];

  serviceSignatures = [(_HAPBTLEDiscoveryContext *)self serviceSignatures];
  [serviceSignatures removeAllObjects];
}

- (BOOL)isComplete
{
  discoveringServices = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  if ([discoveringServices count])
  {
    v4 = 0;
  }

  else
  {
    discoveringCharacteristics = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
    if ([discoveringCharacteristics count])
    {
      v4 = 0;
    }

    else
    {
      readingCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
      if ([readingCharacteristics count])
      {
        v4 = 0;
      }

      else
      {
        discoveringDescriptors = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
        if ([discoveringDescriptors count])
        {
          v4 = 0;
        }

        else
        {
          readingDescriptors = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
          if ([readingDescriptors count])
          {
            v4 = 0;
          }

          else
          {
            readingSignatureCharacteristics = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
            if ([readingSignatureCharacteristics count])
            {
              v4 = 0;
            }

            else
            {
              readingSignatureServices = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
              v4 = [readingSignatureServices count] == 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

@end