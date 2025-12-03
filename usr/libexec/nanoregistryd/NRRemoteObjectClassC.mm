@interface NRRemoteObjectClassC
- (NRRemoteObjectClassC)initWithDelegate:(id)delegate andQueue:(id)queue;
- (id)_getSunriseDate;
- (id)_packProperty:(id)property withValue:(id)value;
- (id)_packPropertyValue:(id)value;
- (id)_unpackProperties:(id)properties;
- (id)_unpackProperty:(id)property name:(id *)name;
- (id)_unpackPropertyValue:(id)value;
- (id)packProperties:(id)properties thisIsAllOfThem:(BOOL)them;
- (void)addTermsEvent:(id)event toIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)checkTermsEvent:(id)event toIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)idsHandleAddTermsEvent:(id)event;
- (void)idsHandleCheckTermsEvent:(id)event;
- (void)idsHandlePropertiesChanged:(id)changed;
- (void)idsHandlePropertyRequest:(id)request;
- (void)registerProtobufHandlers;
- (void)sendPropertyRequestWithTimeout:(id)timeout toIDSBTUUID:(id)d withResponseBlock:(id)block;
- (void)sendPropertyResponseWithTimeout:(id)timeout withProperties:(id)properties withRequestIdentifier:(id)identifier withSentBlock:(id)block;
@end

@implementation NRRemoteObjectClassC

- (NRRemoteObjectClassC)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectClassC;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistryclassc" andClientQueue:queue andDelegate:delegate];
}

- (void)registerProtobufHandlers
{
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandlePropertiesChanged:" forIncomingRequestsOfType:2];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandlePropertyRequest:" forIncomingRequestsOfType:4];
  [(NRRemoteObject *)self setConnectedProtobufAction:0 forIncomingResponsesOfType:4];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleAddTermsEvent:" forIncomingRequestsOfType:7];
  [(NRRemoteObject *)self setConnectedProtobufAction:0 forIncomingResponsesOfType:7];
  [(NRRemoteObject *)self setConnectedProtobufAction:"idsHandleCheckTermsEvent:" forIncomingRequestsOfType:8];

  [(NRRemoteObject *)self setConnectedProtobufAction:0 forIncomingResponsesOfType:8];
}

- (void)idsHandlePropertiesChanged:(id)changed
{
  changedCopy = changed;
  v5 = [NRPBPropertiesChanged alloc];
  protobuf = [changedCopy protobuf];
  data = [protobuf data];
  v8 = [(NRPBPropertiesChanged *)v5 initWithData:data];

  delegate = [(NRRemoteObject *)self delegate];
  v10 = sub_1000FFEA4(v8);
  v11 = [(NRRemoteObjectClassC *)self _unpackProperties:v10];

  clientQueue = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0A38;
  block[3] = &unk_1001783B8;
  v18 = delegate;
  selfCopy = self;
  v20 = v11;
  v21 = v8;
  v22 = changedCopy;
  v13 = changedCopy;
  v14 = v8;
  v15 = v11;
  v16 = delegate;
  dispatch_async(clientQueue, block);
}

- (id)_unpackProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_opt_new();
  if (propertiesCopy && [propertiesCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = propertiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v16 = 0;
          v12 = [(NRRemoteObjectClassC *)self _unpackProperty:v11 name:&v16];
          v13 = v16;
          if (v13)
          {
            [v5 setValue:v12 forKey:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (void)idsHandlePropertyRequest:(id)request
{
  requestCopy = request;
  delegate = [(NRRemoteObject *)self delegate];
  clientQueue = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0D20;
  block[3] = &unk_1001758F8;
  v10 = delegate;
  selfCopy = self;
  v12 = requestCopy;
  v7 = requestCopy;
  v8 = delegate;
  dispatch_async(clientQueue, block);
}

- (id)_packPropertyValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc_init(NRPBPropertyValue);
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
    v7 = objc_alloc_init(NRPBNumber);
    objCType = [v6 objCType];
    if (*objCType == 105 && !objCType[1])
    {
      intValue = [v6 intValue];
      v25 = v7;
      goto LABEL_41;
    }

    objCType2 = [v6 objCType];
    if (*objCType2 == 73 && !objCType2[1])
    {
      unsignedIntValue = [v6 unsignedIntValue];
      v27 = v7;
LABEL_43:
      [v27 setInt32Value:unsignedIntValue];
LABEL_65:
      [v7 setIsUnsigned:1];
      goto LABEL_66;
    }

    objCType3 = [v6 objCType];
    if (*objCType3 == 113 && !objCType3[1])
    {
      [v7 setInt64Value:{objc_msgSend(v6, "longLongValue")}];
      goto LABEL_66;
    }

    objCType4 = [v6 objCType];
    if (*objCType4 == 81 && !objCType4[1])
    {
      [v7 setInt64Value:{objc_msgSend(v6, "unsignedLongLongValue")}];
      goto LABEL_65;
    }

    objCType5 = [v6 objCType];
    if (*objCType5 == 115 && !objCType5[1])
    {
      [v7 setInt32Value:{objc_msgSend(v6, "shortValue")}];
      v28 = v7;
      v29 = 1;
    }

    else
    {
      objCType6 = [v6 objCType];
      if (*objCType6 == 83 && !objCType6[1])
      {
        [v7 setInt32Value:{objc_msgSend(v6, "unsignedShortValue")}];
        v30 = v7;
        v31 = 1;
        goto LABEL_64;
      }

      objCType7 = [v6 objCType];
      if (*objCType7 != 99 || objCType7[1])
      {
        objCType8 = [v6 objCType];
        if (*objCType8 != 67 || objCType8[1])
        {
          objCType9 = [v6 objCType];
          if (*objCType9 != 113 || objCType9[1])
          {
            objCType10 = [v6 objCType];
            if (*objCType10 != 81 || objCType10[1])
            {
              objCType11 = [v6 objCType];
              if (*objCType11 == 66 && !objCType11[1])
              {
                [v7 setBoolValue:{objc_msgSend(v6, "BOOLValue")}];
              }

              else
              {
                objCType12 = [v6 objCType];
                if (*objCType12 == 102 && !objCType12[1])
                {
                  [v6 floatValue];
                  [v7 setFloatValue:?];
                }

                else
                {
                  objCType13 = [v6 objCType];
                  if (*objCType13 != 100 || objCType13[1])
                  {
                    goto LABEL_68;
                  }

                  [v6 doubleValue];
                  [v7 setDoubleValue:?];
                }
              }

LABEL_66:
              if (v7)
              {
                [v5 setNumberValue:v7];
                goto LABEL_68;
              }

LABEL_69:

              goto LABEL_70;
            }

            unsignedIntValue = [v6 unsignedIntegerValue];
            v27 = v7;
            goto LABEL_43;
          }

          intValue = [v6 integerValue];
          v25 = v7;
LABEL_41:
          [v25 setInt32Value:intValue];
          goto LABEL_66;
        }

        [v7 setInt32Value:{objc_msgSend(v6, "unsignedCharValue")}];
        v30 = v7;
        v31 = 0;
LABEL_64:
        [v30 setIsShortOrChar:v31];
        goto LABEL_65;
      }

      [v7 setInt32Value:{objc_msgSend(v6, "charValue")}];
      v28 = v7;
      v29 = 0;
    }

    [v28 setIsShortOrChar:v29];
    goto LABEL_66;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
    v7 = objc_alloc_init(NRPBSize);
    if (!strcmp([v6 objCType], "{CGSize=dd}"))
    {
      [v6 sizeValue];
      *&v21 = v21;
      [v7 setWidth:v21];
      [v6 sizeValue];
      *&v23 = v22;
      [v7 setHeight:v23];
      if (!v7)
      {
        goto LABEL_69;
      }

      [v5 setSizeValue:v7];
    }

LABEL_68:

    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setStringValue:valueCopy];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84[0] = 0;
    v84[1] = 0;
    [valueCopy getUUIDBytes:v84];
    v6 = [NSData dataWithBytes:v84 length:16];
    [v5 setUUIDValue:v6];
    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDataValue:valueCopy];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = valueCopy;
    v33 = valueCopy;
    v34 = objc_alloc_init(NSMutableArray);
    [v5 setArrayValues:v34];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v35 = v33;
    v36 = [v35 countByEnumeratingWithState:&v77 objects:v83 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v78;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v78 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [(NRRemoteObjectClassC *)self _packPropertyValue:*(*(&v77 + 1) + 8 * i)];
          if (v40)
          {
            arrayValues = [v5 arrayValues];
            [arrayValues addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v77 objects:v83 count:16];
      }

      while (v37);
    }

LABEL_85:
    arrayValues2 = [v5 arrayValues];
    v52 = [arrayValues2 count];

    if (!v52)
    {
      [v5 setArrayValues:0];
    }

    valueCopy = v32;
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = valueCopy;
    v43 = valueCopy;
    v44 = objc_alloc_init(NSMutableArray);
    [v5 setArrayValues:v44];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v35 = v43;
    v45 = [v35 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v74;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v74 != v47)
          {
            objc_enumerationMutation(v35);
          }

          v49 = [(NRRemoteObjectClassC *)self _packPropertyValue:*(*(&v73 + 1) + 8 * j)];
          if (v49)
          {
            arrayValues3 = [v5 arrayValues];
            [arrayValues3 addObject:v49];
          }
        }

        v46 = [v35 countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v46);
    }

    [v5 setIsSet:1];
    goto LABEL_85;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = valueCopy;
    v53 = valueCopy;
    v54 = objc_alloc_init(NSMutableArray);
    [v5 setArrayValues:v54];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [v53 allKeys];
    v55 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v70;
      do
      {
        for (k = 0; k != v56; k = k + 1)
        {
          if (*v70 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = *(*(&v69 + 1) + 8 * k);
          v60 = [v53 objectForKeyedSubscript:{v59, v67}];
          v61 = [(NRRemoteObjectClassC *)self _packPropertyValue:v59];
          if (v61)
          {
            v62 = [(NRRemoteObjectClassC *)self _packPropertyValue:v60];
            v63 = v62;
            if (v62)
            {
              [v62 setDictionaryKey:v61];
              arrayValues4 = [v5 arrayValues];
              [arrayValues4 addObject:v63];
            }
          }
        }

        v56 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v56);
    }

    arrayValues5 = [v5 arrayValues];
    v66 = [arrayValues5 count];

    if (!v66)
    {
      [v5 setArrayValues:0];
    }

    valueCopy = v67;
  }

  else
  {

    v5 = 0;
  }

LABEL_70:

  return v5;
}

- (id)_packProperty:(id)property withValue:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  v8 = objc_alloc_init(NRPBProperty);
  [v8 setName:propertyCopy];

  v9 = [(NRRemoteObjectClassC *)self _packPropertyValue:valueCopy];

  [v8 setValue:v9];

  return v8;
}

- (id)_getSunriseDate
{
  if (qword_1001B3B70 != -1)
  {
    sub_100106098();
  }

  v3 = qword_1001B3B68;

  return v3;
}

- (id)packProperties:(id)properties thisIsAllOfThem:(BOOL)them
{
  themCopy = them;
  propertiesCopy = properties;
  if ([propertiesCopy count] || themCopy)
  {
    v7 = objc_alloc_init(NRPBPropertiesChanged);
    sub_1000FFE90(v7, themCopy);
    v8 = +[NSDate date];
    _getSunriseDate = [(NRRemoteObjectClassC *)self _getSunriseDate];
    v10 = [v8 laterDate:_getSunriseDate];

    if (v10)
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceReferenceDate];
      sub_1000FFE48(v7, v12);
    }

    v13 = objc_alloc_init(NSMutableArray);
    sub_1000FFEB8(v7, v13);

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = propertiesCopy;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:{v19, v24}];
          v21 = [(NRRemoteObjectClassC *)self _packProperty:v19 withValue:v20];
          v22 = sub_1000FFEA4(v7);
          [v22 addObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_unpackPropertyValue:(id)value
{
  valueCopy = value;
  numberValue = [valueCopy numberValue];

  if (numberValue)
  {
    numberValue2 = [valueCopy numberValue];
    hasInt32Value = [numberValue2 hasInt32Value];

    numberValue3 = [valueCopy numberValue];
    v9 = numberValue3;
    if (hasInt32Value)
    {
      hasIsShortOrChar = [numberValue3 hasIsShortOrChar];

      numberValue4 = [valueCopy numberValue];
      v12 = numberValue4;
      if (hasIsShortOrChar)
      {
        isShortOrChar = [numberValue4 isShortOrChar];

        numberValue5 = [valueCopy numberValue];
        isUnsigned = [numberValue5 isUnsigned];

        numberValue6 = [valueCopy numberValue];
        int32Value = [numberValue6 int32Value];
        if (isShortOrChar)
        {
          if (isUnsigned)
          {
            [NSNumber numberWithUnsignedShort:int32Value];
          }

          else
          {
            [NSNumber numberWithShort:int32Value];
          }
        }

        else if (isUnsigned)
        {
          [NSNumber numberWithUnsignedChar:int32Value];
        }

        else
        {
          [NSNumber numberWithChar:int32Value];
        }
      }

      else
      {
        isUnsigned2 = [numberValue4 isUnsigned];

        numberValue6 = [valueCopy numberValue];
        int32Value2 = [numberValue6 int32Value];
        if (isUnsigned2)
        {
          [NSNumber numberWithUnsignedInt:int32Value2];
        }

        else
        {
          [NSNumber numberWithInt:int32Value2];
        }
      }

      v33 = LABEL_20:;
      goto LABEL_31;
    }

    hasInt64Value = [numberValue3 hasInt64Value];

    numberValue7 = [valueCopy numberValue];
    v27 = numberValue7;
    if (hasInt64Value)
    {
      isUnsigned3 = [numberValue7 isUnsigned];

      numberValue6 = [valueCopy numberValue];
      int64Value = [numberValue6 int64Value];
      if (isUnsigned3)
      {
        [NSNumber numberWithUnsignedLongLong:int64Value];
      }

      else
      {
        [NSNumber numberWithLongLong:int64Value];
      }

      goto LABEL_20;
    }

    hasFloatValue = [numberValue7 hasFloatValue];

    if (hasFloatValue)
    {
      numberValue6 = [valueCopy numberValue];
      [numberValue6 floatValue];
      v33 = [NSNumber numberWithFloat:?];
LABEL_31:
      v24 = v33;

      goto LABEL_32;
    }

    numberValue8 = [valueCopy numberValue];
    hasDoubleValue = [numberValue8 hasDoubleValue];

    if (hasDoubleValue)
    {
      numberValue6 = [valueCopy numberValue];
      [numberValue6 doubleValue];
      v33 = [NSNumber numberWithDouble:?];
      goto LABEL_31;
    }

    numberValue9 = [valueCopy numberValue];
    hasBoolValue = [numberValue9 hasBoolValue];

    if (hasBoolValue)
    {
      numberValue6 = [valueCopy numberValue];
      v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [numberValue6 BOOLValue]);
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  sizeValue = [valueCopy sizeValue];

  if (sizeValue)
  {
    sizeValue2 = [valueCopy sizeValue];
    [sizeValue2 width];
    v21 = v20;
    sizeValue3 = [valueCopy sizeValue];
    [sizeValue3 height];
    v24 = [NSValue valueWithSize:v21, v23];

    goto LABEL_32;
  }

  stringValue = [valueCopy stringValue];

  if (stringValue)
  {
    stringValue2 = [valueCopy stringValue];
LABEL_37:
    v24 = stringValue2;
    goto LABEL_32;
  }

  uUIDValue = [valueCopy uUIDValue];

  if (uUIDValue)
  {
    v87[0] = 0;
    v87[1] = 0;
    uUIDValue2 = [valueCopy uUIDValue];
    [uUIDValue2 getBytes:v87 length:16];

    stringValue2 = [[NSUUID alloc] initWithUUIDBytes:v87];
    goto LABEL_37;
  }

  dataValue = [valueCopy dataValue];

  if (dataValue)
  {
    stringValue2 = [valueCopy dataValue];
    goto LABEL_37;
  }

  arrayValues = [valueCopy arrayValues];
  if (!arrayValues)
  {
LABEL_54:
    v24 = 0;
    goto LABEL_32;
  }

  v45 = arrayValues;
  arrayValues2 = [valueCopy arrayValues];
  v24 = [arrayValues2 count];

  if (!v24)
  {
    goto LABEL_32;
  }

  arrayValues3 = [valueCopy arrayValues];
  firstObject = [arrayValues3 firstObject];

  dictionaryKey = [firstObject dictionaryKey];

  if (!dictionaryKey)
  {
    if ([valueCopy isSet])
    {
      v50 = objc_alloc_init(NSMutableSet);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      arrayValues4 = [valueCopy arrayValues];
      v61 = [arrayValues4 countByEnumeratingWithState:&v72 objects:v84 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v73;
        do
        {
          for (i = 0; i != v62; i = i + 1)
          {
            if (*v73 != v63)
            {
              objc_enumerationMutation(arrayValues4);
            }

            v65 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:*(*(&v72 + 1) + 8 * i)];
            if (v65)
            {
              [v50 addObject:v65];
            }
          }

          v62 = [arrayValues4 countByEnumeratingWithState:&v72 objects:v84 count:16];
        }

        while (v62);
      }
    }

    else
    {
      v50 = objc_alloc_init(NSMutableArray);
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      arrayValues4 = [valueCopy arrayValues];
      v66 = [arrayValues4 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v77;
        do
        {
          for (j = 0; j != v67; j = j + 1)
          {
            if (*v77 != v68)
            {
              objc_enumerationMutation(arrayValues4);
            }

            v70 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:*(*(&v76 + 1) + 8 * j)];
            if (v70)
            {
              [v50 addObject:v70];
            }
          }

          v67 = [arrayValues4 countByEnumeratingWithState:&v76 objects:v85 count:16];
        }

        while (v67);
      }
    }

    if (![v50 count])
    {
      v24 = 0;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v71 = firstObject;
  v50 = objc_alloc_init(NSMutableDictionary);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  arrayValues5 = [valueCopy arrayValues];
  v52 = [arrayValues5 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v81;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v81 != v54)
        {
          objc_enumerationMutation(arrayValues5);
        }

        v56 = *(*(&v80 + 1) + 8 * k);
        dictionaryKey2 = [v56 dictionaryKey];
        v58 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:dictionaryKey2];

        v59 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:v56];
        if (v58)
        {
          if (v59)
          {
            [v50 setObject:v59 forKey:v58];
          }

          else
          {
            [v50 removeObjectForKey:v58];
          }
        }
      }

      v53 = [arrayValues5 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v53);
  }

  if ([v50 count])
  {
    firstObject = v71;
LABEL_77:
    v24 = [v50 copy];
    goto LABEL_78;
  }

  v24 = 0;
  firstObject = v71;
LABEL_78:

LABEL_32:

  return v24;
}

- (id)_unpackProperty:(id)property name:(id *)name
{
  propertyCopy = property;
  *name = [propertyCopy name];
  value = [propertyCopy value];

  v8 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:value];

  return v8;
}

- (void)sendPropertyRequestWithTimeout:(id)timeout toIDSBTUUID:(id)d withResponseBlock:(id)block
{
  timeoutCopy = timeout;
  dCopy = d;
  blockCopy = block;
  v11 = objc_alloc_init(NRPBPropertyRequest);
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F25E0;
  v17[3] = &unk_100175C68;
  v12 = blockCopy;
  v18 = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F2600;
  v14[3] = &unk_100179DA0;
  objc_copyWeak(&v16, &location);
  v13 = v12;
  v15 = v13;
  [(NRRemoteObject *)self sendRequest:v11 type:4 withTimeout:timeoutCopy withResponseTimeout:timeoutCopy withDescription:@"Property request" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v17 andResponse:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)sendPropertyResponseWithTimeout:(id)timeout withProperties:(id)properties withRequestIdentifier:(id)identifier withSentBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  timeoutCopy = timeout;
  v13 = [(NRRemoteObjectClassC *)self packProperties:properties thisIsAllOfThem:1];
  v14 = objc_alloc_init(NRPBPropertyResponse);
  v15 = sub_1000FFEA4(v13);
  sub_100102068(v14, v15);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F285C;
  v17[3] = &unk_100175C68;
  v18 = blockCopy;
  v16 = blockCopy;
  [(NRRemoteObject *)self sendResponse:v14 type:4 withRequest:identifierCopy withTimeout:timeoutCopy withDescription:@"property response" onlyOneFor:0 priority:300 didSend:v17];
}

- (void)addTermsEvent:(id)event toIDSBTUUID:(id)d withResponseBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  eventCopy = event;
  v11 = objc_alloc_init(NRPBAddTermsEventRequest);
  sub_100102E10(v11, eventCopy);
  v12 = sub_100102E28(v11);
  [v12 setWritable:1];

  termsText = [eventCopy termsText];

  v14 = sub_100102E28(v11);
  [v14 setTermsText:termsText];

  v15 = sub_100102E28(v11);
  [v15 setWritable:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F2A4C;
  v19[3] = &unk_100175C68;
  v20 = blockCopy;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F2A64;
  v17[3] = &unk_100177FB0;
  v18 = v20;
  v16 = v20;
  [(NRRemoteObject *)self sendRequest:v11 type:7 withTimeout:&off_1001878A8 withResponseTimeout:&off_1001878B8 withDescription:@"addTermsEvent" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v19 andResponse:v17];
}

- (void)checkTermsEvent:(id)event toIDSBTUUID:(id)d withResponseBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  eventCopy = event;
  v11 = objc_alloc_init(NRPBCheckTermsEventRequest);
  sub_1000FDF14(v11, eventCopy);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F2D54;
  v15[3] = &unk_100175C68;
  v16 = blockCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F2D74;
  v13[3] = &unk_100177FB0;
  v14 = v16;
  v12 = v16;
  [(NRRemoteObject *)self sendRequest:v11 type:8 withTimeout:&off_1001878A8 withResponseTimeout:&off_1001878B8 withDescription:@"checkTermsEvent" onlyOneFor:0 priority:300 toIDSBTUUID:dCopy didSend:v15 andResponse:v13];
}

- (void)idsHandleAddTermsEvent:(id)event
{
  eventCopy = event;
  delegate = [(NRRemoteObject *)self delegate];
  v6 = [NRPBAddTermsEventRequest alloc];
  protobuf = [eventCopy protobuf];
  data = [protobuf data];
  v9 = [(NRPBAddTermsEventRequest *)v6 initWithData:data];

  if (v9)
  {
    v10 = sub_100102E28(v9);

    if (v10)
    {
      clientQueue = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F3064;
      v12[3] = &unk_1001756F8;
      v13 = v9;
      v14 = delegate;
      selfCopy = self;
      v16 = eventCopy;
      dispatch_async(clientQueue, v12);
    }
  }
}

- (void)idsHandleCheckTermsEvent:(id)event
{
  eventCopy = event;
  delegate = [(NRRemoteObject *)self delegate];
  v6 = [NRPBCheckTermsEventRequest alloc];
  protobuf = [eventCopy protobuf];
  data = [protobuf data];
  v9 = [(NRPBCheckTermsEventRequest *)v6 initWithData:data];

  if (v9)
  {
    v10 = sub_1000FDF2C(v9);

    if (v10)
    {
      clientQueue = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F33D8;
      v12[3] = &unk_1001756F8;
      v13 = delegate;
      selfCopy = self;
      v15 = v9;
      v16 = eventCopy;
      dispatch_async(clientQueue, v12);
    }
  }
}

@end