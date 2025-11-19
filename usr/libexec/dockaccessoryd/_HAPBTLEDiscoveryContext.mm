@interface _HAPBTLEDiscoveryContext
- (BOOL)isComplete;
- (_HAPBTLEDiscoveryContext)init;
- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)a3;
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

- (_HAPBTLEDiscoveryContext)initWithDiscoveryType:(int64_t)a3
{
  v25.receiver = self;
  v25.super_class = _HAPBTLEDiscoveryContext;
  v4 = [(_HAPBTLEDiscoveryContext *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->_discoveryType = a3;
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
  v3 = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  [v3 removeAllObjects];

  v4 = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
  [v4 removeAllObjects];

  v5 = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
  [v5 removeAllObjects];

  v6 = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
  [v6 removeAllObjects];

  v7 = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
  [v7 removeAllObjects];

  v8 = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
  [v8 removeAllObjects];

  v9 = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
  [v9 removeAllObjects];

  v10 = [(_HAPBTLEDiscoveryContext *)self characteristicSignatures];
  [v10 removeAllObjects];

  v11 = [(_HAPBTLEDiscoveryContext *)self serviceSignatures];
  [v11 removeAllObjects];
}

- (BOOL)isComplete
{
  v3 = [(_HAPBTLEDiscoveryContext *)self discoveringServices];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_HAPBTLEDiscoveryContext *)self discoveringCharacteristics];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(_HAPBTLEDiscoveryContext *)self readingCharacteristics];
      if ([v6 count])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(_HAPBTLEDiscoveryContext *)self discoveringDescriptors];
        if ([v7 count])
        {
          v4 = 0;
        }

        else
        {
          v8 = [(_HAPBTLEDiscoveryContext *)self readingDescriptors];
          if ([v8 count])
          {
            v4 = 0;
          }

          else
          {
            v9 = [(_HAPBTLEDiscoveryContext *)self readingSignatureCharacteristics];
            if ([v9 count])
            {
              v4 = 0;
            }

            else
            {
              v10 = [(_HAPBTLEDiscoveryContext *)self readingSignatureServices];
              v4 = [v10 count] == 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

@end