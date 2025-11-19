@interface NRRemoteObjectClassC
- (NRRemoteObjectClassC)initWithDelegate:(id)a3 andQueue:(id)a4;
- (id)_getSunriseDate;
- (id)_packProperty:(id)a3 withValue:(id)a4;
- (id)_packPropertyValue:(id)a3;
- (id)_unpackProperties:(id)a3;
- (id)_unpackProperty:(id)a3 name:(id *)a4;
- (id)_unpackPropertyValue:(id)a3;
- (id)packProperties:(id)a3 thisIsAllOfThem:(BOOL)a4;
- (void)addTermsEvent:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)checkTermsEvent:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)idsHandleAddTermsEvent:(id)a3;
- (void)idsHandleCheckTermsEvent:(id)a3;
- (void)idsHandlePropertiesChanged:(id)a3;
- (void)idsHandlePropertyRequest:(id)a3;
- (void)registerProtobufHandlers;
- (void)sendPropertyRequestWithTimeout:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5;
- (void)sendPropertyResponseWithTimeout:(id)a3 withProperties:(id)a4 withRequestIdentifier:(id)a5 withSentBlock:(id)a6;
@end

@implementation NRRemoteObjectClassC

- (NRRemoteObjectClassC)initWithDelegate:(id)a3 andQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = NRRemoteObjectClassC;
  return [(NRRemoteObject *)&v5 initWithServiceName:@"com.apple.private.alloy.bluetoothregistryclassc" andClientQueue:a4 andDelegate:a3];
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

- (void)idsHandlePropertiesChanged:(id)a3
{
  v4 = a3;
  v5 = [NRPBPropertiesChanged alloc];
  v6 = [v4 protobuf];
  v7 = [v6 data];
  v8 = [(NRPBPropertiesChanged *)v5 initWithData:v7];

  v9 = [(NRRemoteObject *)self delegate];
  v10 = sub_1000FFEA4(v8);
  v11 = [(NRRemoteObjectClassC *)self _unpackProperties:v10];

  v12 = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0A38;
  block[3] = &unk_1001783B8;
  v18 = v9;
  v19 = self;
  v20 = v11;
  v21 = v8;
  v22 = v4;
  v13 = v4;
  v14 = v8;
  v15 = v11;
  v16 = v9;
  dispatch_async(v12, block);
}

- (id)_unpackProperties:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (v4 && [v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
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

- (void)idsHandlePropertyRequest:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self delegate];
  v6 = [(NRRemoteObject *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F0D20;
  block[3] = &unk_1001758F8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (id)_packPropertyValue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NRPBPropertyValue);
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = objc_alloc_init(NRPBNumber);
    v8 = [v6 objCType];
    if (*v8 == 105 && !v8[1])
    {
      v24 = [v6 intValue];
      v25 = v7;
      goto LABEL_41;
    }

    v9 = [v6 objCType];
    if (*v9 == 73 && !v9[1])
    {
      v26 = [v6 unsignedIntValue];
      v27 = v7;
LABEL_43:
      [v27 setInt32Value:v26];
LABEL_65:
      [v7 setIsUnsigned:1];
      goto LABEL_66;
    }

    v10 = [v6 objCType];
    if (*v10 == 113 && !v10[1])
    {
      [v7 setInt64Value:{objc_msgSend(v6, "longLongValue")}];
      goto LABEL_66;
    }

    v11 = [v6 objCType];
    if (*v11 == 81 && !v11[1])
    {
      [v7 setInt64Value:{objc_msgSend(v6, "unsignedLongLongValue")}];
      goto LABEL_65;
    }

    v12 = [v6 objCType];
    if (*v12 == 115 && !v12[1])
    {
      [v7 setInt32Value:{objc_msgSend(v6, "shortValue")}];
      v28 = v7;
      v29 = 1;
    }

    else
    {
      v13 = [v6 objCType];
      if (*v13 == 83 && !v13[1])
      {
        [v7 setInt32Value:{objc_msgSend(v6, "unsignedShortValue")}];
        v30 = v7;
        v31 = 1;
        goto LABEL_64;
      }

      v14 = [v6 objCType];
      if (*v14 != 99 || v14[1])
      {
        v15 = [v6 objCType];
        if (*v15 != 67 || v15[1])
        {
          v16 = [v6 objCType];
          if (*v16 != 113 || v16[1])
          {
            v17 = [v6 objCType];
            if (*v17 != 81 || v17[1])
            {
              v18 = [v6 objCType];
              if (*v18 == 66 && !v18[1])
              {
                [v7 setBoolValue:{objc_msgSend(v6, "BOOLValue")}];
              }

              else
              {
                v19 = [v6 objCType];
                if (*v19 == 102 && !v19[1])
                {
                  [v6 floatValue];
                  [v7 setFloatValue:?];
                }

                else
                {
                  v20 = [v6 objCType];
                  if (*v20 != 100 || v20[1])
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

            v26 = [v6 unsignedIntegerValue];
            v27 = v7;
            goto LABEL_43;
          }

          v24 = [v6 integerValue];
          v25 = v7;
LABEL_41:
          [v25 setInt32Value:v24];
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
    v6 = v4;
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
    [v5 setStringValue:v4];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84[0] = 0;
    v84[1] = 0;
    [v4 getUUIDBytes:v84];
    v6 = [NSData dataWithBytes:v84 length:16];
    [v5 setUUIDValue:v6];
    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDataValue:v4];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v4;
    v33 = v4;
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
            v41 = [v5 arrayValues];
            [v41 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v77 objects:v83 count:16];
      }

      while (v37);
    }

LABEL_85:
    v51 = [v5 arrayValues];
    v52 = [v51 count];

    if (!v52)
    {
      [v5 setArrayValues:0];
    }

    v4 = v32;
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v4;
    v43 = v4;
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
            v50 = [v5 arrayValues];
            [v50 addObject:v49];
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
    v67 = v4;
    v53 = v4;
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
              v64 = [v5 arrayValues];
              [v64 addObject:v63];
            }
          }
        }

        v56 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v56);
    }

    v65 = [v5 arrayValues];
    v66 = [v65 count];

    if (!v66)
    {
      [v5 setArrayValues:0];
    }

    v4 = v67;
  }

  else
  {

    v5 = 0;
  }

LABEL_70:

  return v5;
}

- (id)_packProperty:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NRPBProperty);
  [v8 setName:v7];

  v9 = [(NRRemoteObjectClassC *)self _packPropertyValue:v6];

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

- (id)packProperties:(id)a3 thisIsAllOfThem:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count] || v4)
  {
    v7 = objc_alloc_init(NRPBPropertiesChanged);
    sub_1000FFE90(v7, v4);
    v8 = +[NSDate date];
    v9 = [(NRRemoteObjectClassC *)self _getSunriseDate];
    v10 = [v8 laterDate:v9];

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
    v14 = v6;
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

- (id)_unpackPropertyValue:(id)a3
{
  v4 = a3;
  v5 = [v4 numberValue];

  if (v5)
  {
    v6 = [v4 numberValue];
    v7 = [v6 hasInt32Value];

    v8 = [v4 numberValue];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 hasIsShortOrChar];

      v11 = [v4 numberValue];
      v12 = v11;
      if (v10)
      {
        v13 = [v11 isShortOrChar];

        v14 = [v4 numberValue];
        v15 = [v14 isUnsigned];

        v16 = [v4 numberValue];
        v17 = [v16 int32Value];
        if (v13)
        {
          if (v15)
          {
            [NSNumber numberWithUnsignedShort:v17];
          }

          else
          {
            [NSNumber numberWithShort:v17];
          }
        }

        else if (v15)
        {
          [NSNumber numberWithUnsignedChar:v17];
        }

        else
        {
          [NSNumber numberWithChar:v17];
        }
      }

      else
      {
        v30 = [v11 isUnsigned];

        v16 = [v4 numberValue];
        v31 = [v16 int32Value];
        if (v30)
        {
          [NSNumber numberWithUnsignedInt:v31];
        }

        else
        {
          [NSNumber numberWithInt:v31];
        }
      }

      v33 = LABEL_20:;
      goto LABEL_31;
    }

    v25 = [v8 hasInt64Value];

    v26 = [v4 numberValue];
    v27 = v26;
    if (v25)
    {
      v28 = [v26 isUnsigned];

      v16 = [v4 numberValue];
      v29 = [v16 int64Value];
      if (v28)
      {
        [NSNumber numberWithUnsignedLongLong:v29];
      }

      else
      {
        [NSNumber numberWithLongLong:v29];
      }

      goto LABEL_20;
    }

    v32 = [v26 hasFloatValue];

    if (v32)
    {
      v16 = [v4 numberValue];
      [v16 floatValue];
      v33 = [NSNumber numberWithFloat:?];
LABEL_31:
      v24 = v33;

      goto LABEL_32;
    }

    v36 = [v4 numberValue];
    v37 = [v36 hasDoubleValue];

    if (v37)
    {
      v16 = [v4 numberValue];
      [v16 doubleValue];
      v33 = [NSNumber numberWithDouble:?];
      goto LABEL_31;
    }

    v40 = [v4 numberValue];
    v41 = [v40 hasBoolValue];

    if (v41)
    {
      v16 = [v4 numberValue];
      v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v16 BOOLValue]);
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  v18 = [v4 sizeValue];

  if (v18)
  {
    v19 = [v4 sizeValue];
    [v19 width];
    v21 = v20;
    v22 = [v4 sizeValue];
    [v22 height];
    v24 = [NSValue valueWithSize:v21, v23];

    goto LABEL_32;
  }

  v34 = [v4 stringValue];

  if (v34)
  {
    v35 = [v4 stringValue];
LABEL_37:
    v24 = v35;
    goto LABEL_32;
  }

  v38 = [v4 uUIDValue];

  if (v38)
  {
    v87[0] = 0;
    v87[1] = 0;
    v39 = [v4 uUIDValue];
    [v39 getBytes:v87 length:16];

    v35 = [[NSUUID alloc] initWithUUIDBytes:v87];
    goto LABEL_37;
  }

  v43 = [v4 dataValue];

  if (v43)
  {
    v35 = [v4 dataValue];
    goto LABEL_37;
  }

  v44 = [v4 arrayValues];
  if (!v44)
  {
LABEL_54:
    v24 = 0;
    goto LABEL_32;
  }

  v45 = v44;
  v46 = [v4 arrayValues];
  v24 = [v46 count];

  if (!v24)
  {
    goto LABEL_32;
  }

  v47 = [v4 arrayValues];
  v48 = [v47 firstObject];

  v49 = [v48 dictionaryKey];

  if (!v49)
  {
    if ([v4 isSet])
    {
      v50 = objc_alloc_init(NSMutableSet);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v60 = [v4 arrayValues];
      v61 = [v60 countByEnumeratingWithState:&v72 objects:v84 count:16];
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
              objc_enumerationMutation(v60);
            }

            v65 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:*(*(&v72 + 1) + 8 * i)];
            if (v65)
            {
              [v50 addObject:v65];
            }
          }

          v62 = [v60 countByEnumeratingWithState:&v72 objects:v84 count:16];
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
      v60 = [v4 arrayValues];
      v66 = [v60 countByEnumeratingWithState:&v76 objects:v85 count:16];
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
              objc_enumerationMutation(v60);
            }

            v70 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:*(*(&v76 + 1) + 8 * j)];
            if (v70)
            {
              [v50 addObject:v70];
            }
          }

          v67 = [v60 countByEnumeratingWithState:&v76 objects:v85 count:16];
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

  v71 = v48;
  v50 = objc_alloc_init(NSMutableDictionary);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v51 = [v4 arrayValues];
  v52 = [v51 countByEnumeratingWithState:&v80 objects:v86 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v80 + 1) + 8 * k);
        v57 = [v56 dictionaryKey];
        v58 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:v57];

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

      v53 = [v51 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v53);
  }

  if ([v50 count])
  {
    v48 = v71;
LABEL_77:
    v24 = [v50 copy];
    goto LABEL_78;
  }

  v24 = 0;
  v48 = v71;
LABEL_78:

LABEL_32:

  return v24;
}

- (id)_unpackProperty:(id)a3 name:(id *)a4
{
  v6 = a3;
  *a4 = [v6 name];
  v7 = [v6 value];

  v8 = [(NRRemoteObjectClassC *)self _unpackPropertyValue:v7];

  return v8;
}

- (void)sendPropertyRequestWithTimeout:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NRPBPropertyRequest);
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F25E0;
  v17[3] = &unk_100175C68;
  v12 = v10;
  v18 = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F2600;
  v14[3] = &unk_100179DA0;
  objc_copyWeak(&v16, &location);
  v13 = v12;
  v15 = v13;
  [(NRRemoteObject *)self sendRequest:v11 type:4 withTimeout:v8 withResponseTimeout:v8 withDescription:@"Property request" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v17 andResponse:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)sendPropertyResponseWithTimeout:(id)a3 withProperties:(id)a4 withRequestIdentifier:(id)a5 withSentBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(NRRemoteObjectClassC *)self packProperties:a4 thisIsAllOfThem:1];
  v14 = objc_alloc_init(NRPBPropertyResponse);
  v15 = sub_1000FFEA4(v13);
  sub_100102068(v14, v15);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F285C;
  v17[3] = &unk_100175C68;
  v18 = v10;
  v16 = v10;
  [(NRRemoteObject *)self sendResponse:v14 type:4 withRequest:v11 withTimeout:v12 withDescription:@"property response" onlyOneFor:0 priority:300 didSend:v17];
}

- (void)addTermsEvent:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NRPBAddTermsEventRequest);
  sub_100102E10(v11, v10);
  v12 = sub_100102E28(v11);
  [v12 setWritable:1];

  v13 = [v10 termsText];

  v14 = sub_100102E28(v11);
  [v14 setTermsText:v13];

  v15 = sub_100102E28(v11);
  [v15 setWritable:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F2A4C;
  v19[3] = &unk_100175C68;
  v20 = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F2A64;
  v17[3] = &unk_100177FB0;
  v18 = v20;
  v16 = v20;
  [(NRRemoteObject *)self sendRequest:v11 type:7 withTimeout:&off_1001878A8 withResponseTimeout:&off_1001878B8 withDescription:@"addTermsEvent" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v19 andResponse:v17];
}

- (void)checkTermsEvent:(id)a3 toIDSBTUUID:(id)a4 withResponseBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NRPBCheckTermsEventRequest);
  sub_1000FDF14(v11, v10);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F2D54;
  v15[3] = &unk_100175C68;
  v16 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F2D74;
  v13[3] = &unk_100177FB0;
  v14 = v16;
  v12 = v16;
  [(NRRemoteObject *)self sendRequest:v11 type:8 withTimeout:&off_1001878A8 withResponseTimeout:&off_1001878B8 withDescription:@"checkTermsEvent" onlyOneFor:0 priority:300 toIDSBTUUID:v9 didSend:v15 andResponse:v13];
}

- (void)idsHandleAddTermsEvent:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self delegate];
  v6 = [NRPBAddTermsEventRequest alloc];
  v7 = [v4 protobuf];
  v8 = [v7 data];
  v9 = [(NRPBAddTermsEventRequest *)v6 initWithData:v8];

  if (v9)
  {
    v10 = sub_100102E28(v9);

    if (v10)
    {
      v11 = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F3064;
      v12[3] = &unk_1001756F8;
      v13 = v9;
      v14 = v5;
      v15 = self;
      v16 = v4;
      dispatch_async(v11, v12);
    }
  }
}

- (void)idsHandleCheckTermsEvent:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self delegate];
  v6 = [NRPBCheckTermsEventRequest alloc];
  v7 = [v4 protobuf];
  v8 = [v7 data];
  v9 = [(NRPBCheckTermsEventRequest *)v6 initWithData:v8];

  if (v9)
  {
    v10 = sub_1000FDF2C(v9);

    if (v10)
    {
      v11 = [(NRRemoteObject *)self clientQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F33D8;
      v12[3] = &unk_1001756F8;
      v13 = v5;
      v14 = self;
      v15 = v9;
      v16 = v4;
      dispatch_async(v11, v12);
    }
  }
}

@end