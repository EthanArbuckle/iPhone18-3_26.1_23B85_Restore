@interface WAMessageAWD
- (id)_valuesForRepeatedField:(id)field;
- (id)dictionaryRepresentation;
@end

@implementation WAMessageAWD

- (id)_valuesForRepeatedField:(id)field
{
  v4 = +[NSMutableArray array];
  if ([objc_msgSend(field "repeatableValues")])
  {
    v5 = 0;
    do
    {
      [v4 addObject:{objc_msgSend(objc_msgSend(field, "repeatableValues"), "objectAtIndex:", v5++)}];
    }

    while (v5 < [objc_msgSend(field "repeatableValues")]);
  }

  return v4;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  context = objc_autoreleasePoolPush();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [-[WAMessageAWD mutableFields](self "mutableFields")];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = &xpc_dictionary_set_uint64_ptr;
    v23 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        type = [v10 type];
        if (type <= 4)
        {
          if (type > 2)
          {
            if (type == 3)
            {
              if (![v10 isRepeatable])
              {
                stringValue = [v8[455] numberWithInt:{objc_msgSend(v10, "int32Value")}];
                goto LABEL_39;
              }
            }

            else if (![v10 isRepeatable])
            {
              stringValue = [v8[455] numberWithLongLong:{objc_msgSend(v10, "int64Value")}];
              goto LABEL_39;
            }

LABEL_38:
            stringValue = [(WAMessageAWD *)self _valuesForRepeatedField:v10];
            goto LABEL_39;
          }

          if (type == 1)
          {
            if (![v10 isRepeatable])
            {
              v19 = v8[455];
              [v10 doubleValue];
              stringValue = [v19 numberWithDouble:?];
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          if (type == 2)
          {
            if (![v10 isRepeatable])
            {
              v17 = v8[455];
              [v10 floatValue];
              stringValue = [v17 numberWithFloat:?];
LABEL_39:
              [v3 setValue:stringValue forKey:{objc_msgSend(v10, "key")}];
              goto LABEL_40;
            }

            goto LABEL_38;
          }

LABEL_42:
          NSLog(@"%s: unhandled field %@", "[WAMessageAWD(WiFi) dictionaryRepresentation]", v10);
          goto LABEL_40;
        }

        if (type <= 6)
        {
          if (type == 5)
          {
            if (![v10 isRepeatable])
            {
              stringValue = [v8[455] numberWithUnsignedInt:{objc_msgSend(v10, "uint32Value")}];
              goto LABEL_39;
            }
          }

          else if (![v10 isRepeatable])
          {
            stringValue = [v8[455] numberWithUnsignedLongLong:{objc_msgSend(v10, "uint64Value")}];
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (type == 7)
        {
          if (![v10 isRepeatable])
          {
            stringValue = [v8[455] numberWithBool:{objc_msgSend(v10, "BOOLValue")}];
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (type == 8)
        {
          if (![v10 isRepeatable])
          {
            stringValue = [v10 stringValue];
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (type != 10)
        {
          goto LABEL_42;
        }

        if (![v10 isRepeatable])
        {
          stringValue = [objc_msgSend(v10 "subMessageValue")];
          goto LABEL_39;
        }

        v12 = v8;
        selfCopy = self;
        v14 = +[NSMutableArray array];
        if ([objc_msgSend(v10 "repeatableValues")])
        {
          v15 = 0;
          do
          {
            v16 = [objc_msgSend(v10 "repeatableValues")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 addObject:{objc_msgSend(v16, "dictionaryRepresentation")}];
            }

            ++v15;
          }

          while (v15 < [objc_msgSend(v10 "repeatableValues")]);
        }

        [v3 setValue:v14 forKey:{objc_msgSend(v10, "key")}];
        self = selfCopy;
        v8 = v12;
        v4 = v23;
LABEL_40:
        v9 = v9 + 1;
      }

      while (v9 != v6);
      v20 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v20;
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
  return v3;
}

@end