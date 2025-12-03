@interface BTCrashlogDecoder
- (id)decodeData:(id)data forSection:(id)section fromCore:(id)core;
- (id)decodeData:(id)data withSchema:(id)schema;
- (id)extractValueFromData:(id)data type:(id)type enumDict:(id)dict;
- (id)schemaForCore:(id)core;
- (id)supportedSectionsForCore:(id)core;
@end

@implementation BTCrashlogDecoder

- (id)extractValueFromData:(id)data type:(id)type enumDict:(id)dict
{
  dataCopy = data;
  typeCopy = type;
  dictCopy = dict;
  bytes = [dataCopy bytes];
  if (([typeCopy hasPrefix:@"uint8_t"] & 1) == 0 && !objc_msgSend(typeCopy, "hasPrefix:", @"UINT8"))
  {
    if (([typeCopy hasPrefix:@"uint16_t"] & 1) != 0 || objc_msgSend(typeCopy, "hasPrefix:", @"UINT16"))
    {
      if ([dataCopy length] <= 1)
      {
        goto LABEL_8;
      }

LABEL_37:
      v11 = [NSNumber numberWithUnsignedShort:*bytes];
      goto LABEL_9;
    }

    if (([typeCopy hasPrefix:@"uint32_t"] & 1) != 0 || objc_msgSend(typeCopy, "hasPrefix:", @"UINT32"))
    {
      if ([dataCopy length] <= 3)
      {
        goto LABEL_8;
      }

LABEL_29:
      v11 = [NSNumber numberWithUnsignedInt:*bytes];
      goto LABEL_9;
    }

    if (([typeCopy hasPrefix:@"uint64_t"] & 1) != 0 || objc_msgSend(typeCopy, "hasPrefix:", @"uint64"))
    {
      if ([dataCopy length] <= 7)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    v23 = [dataCopy length];
    if (v23 > 3)
    {
      if (v23 == 4)
      {
        goto LABEL_29;
      }

      if (v23 == 8)
      {
LABEL_33:
        v11 = [NSNumber numberWithUnsignedLongLong:*bytes];
        goto LABEL_9;
      }
    }

    else
    {
      if (v23 == 1)
      {
        goto LABEL_4;
      }

      if (v23 == 2)
      {
        goto LABEL_37;
      }
    }

    v11 = [dataCopy copy];
    goto LABEL_9;
  }

  if (![dataCopy length])
  {
LABEL_8:
    v11 = +[NSNull null];
    goto LABEL_9;
  }

LABEL_4:
  v11 = [NSNumber numberWithUnsignedChar:*bytes];
LABEL_9:
  v12 = v11;
  if ([dictCopy count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = dictCopy;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v24 = dictCopy;
        v16 = *v26;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            v19 = [v13 objectForKeyedSubscript:v18];
            v20 = [v19 isEqual:v12];

            if (v20)
            {
              v21 = v18;

              v12 = v21;
              goto LABEL_21;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

LABEL_21:
        dictCopy = v24;
      }
    }
  }

  return v12;
}

- (id)decodeData:(id)data withSchema:(id)schema
{
  dataCopy = data;
  schemaCopy = schema;
  v39 = objc_alloc_init(NSMutableDictionary);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = schemaCopy;
  obj = [schemaCopy objectForKeyedSubscript:@"members"];
  v6 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v41 = *v50;
    do
    {
      v8 = 0;
      v37 = v7;
      do
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v8;
        v9 = *(*(&v49 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"name"];
        v11 = [v9 objectForKeyedSubscript:@"byte_offset"];
        v12 = [v9 objectForKeyedSubscript:@"size"];
        v46 = [v9 objectForKeyedSubscript:@"type"];
        v45 = [v9 objectForKeyedSubscript:@"enum_dict"];
        v13 = [v9 objectForKeyedSubscript:@"members"];
        v14 = [v9 objectForKeyedSubscript:@"num_of_child"];
        v44 = v10;
        v16 = v10 == 0;
        v15 = v12;
        v16 = v16 || v11 == 0;
        if (!v16 && v12 != 0)
        {
          v42 = v14;
          if ([v14 integerValue] >= 1 && objc_msgSend(v46, "containsString:", @"["))
          {
            v18 = objc_alloc_init(NSMutableArray);
            unsignedIntegerValue = [v42 unsignedIntegerValue];
            v38 = v15;
            unsignedIntegerValue2 = [v15 unsignedIntegerValue];
            v21 = 0;
            if (unsignedIntegerValue <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = unsignedIntegerValue;
            }

            v23 = unsignedIntegerValue2 / unsignedIntegerValue;
            do
            {
              v24 = [v11 unsignedIntegerValue] + v21 * v23;
              if ([v13 count])
              {
                v25 = [dataCopy subdataWithRange:{v24, v23}];
                v26 = [v13 objectAtIndexedSubscript:0];
                v27 = [(BTCrashlogDecoder *)self decodeData:v25 withSchema:v26];
                v28 = [v27 objectForKeyedSubscript:@"[0]"];
                [v18 addObject:v28];
              }

              else
              {
                v25 = [v46 substringToIndex:{objc_msgSend(v46, "rangeOfString:", @"["}];
                v29 = [dataCopy subdataWithRange:{v24, v23}];
                v26 = [(BTCrashlogDecoder *)self extractValueFromData:v29 type:v25 enumDict:v45];

                if (v26)
                {
                  [v18 addObject:v26];
                }
              }

              ++v21;
              --v22;
            }

            while (v22);
            [v39 setObject:v18 forKeyedSubscript:v44];
            v7 = v37;
            v15 = v38;
          }

          else if (v13 && [v13 count])
          {
            v18 = [dataCopy subdataWithRange:{objc_msgSend(v11, "unsignedIntegerValue"), objc_msgSend(v12, "unsignedIntegerValue")}];
            v30 = [(BTCrashlogDecoder *)self decodeData:v18 withSchema:v9];
            [v39 addEntriesFromDictionary:v30];
          }

          else
          {
            v31 = [dataCopy subdataWithRange:{objc_msgSend(v11, "unsignedIntegerValue"), objc_msgSend(v12, "unsignedIntegerValue")}];
            v18 = [(BTCrashlogDecoder *)self extractValueFromData:v31 type:v46 enumDict:v45];

            if (v18)
            {
              [v39 setObject:v18 forKeyedSubscript:v44];
            }
          }

          v14 = v42;
        }

        v8 = v43 + 1;
      }

      while ((v43 + 1) != v7);
      v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v7);
  }

  v32 = [v36 objectForKeyedSubscript:@"name"];
  v53 = v32;
  v33 = [v39 copy];
  v54 = v33;
  v34 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];

  return v34;
}

- (id)schemaForCore:(id)core
{
  coreCopy = core;
  if ([coreCopy isEqualToString:@"BTMAIN"] & 1) != 0 || (objc_msgSend(coreCopy, "isEqualToString:", @"BTS"))
  {
    v4 = &off_100082AB0;
  }

  else if ([coreCopy isEqualToString:@"BTLPS"])
  {
    v4 = &off_100082F88;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)supportedSectionsForCore:(id)core
{
  v3 = [(BTCrashlogDecoder *)self schemaForCore:core];
  allKeys = [v3 allKeys];
  v5 = allKeys;
  if (allKeys)
  {
    v6 = allKeys;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = v6;

  return v6;
}

- (id)decodeData:(id)data forSection:(id)section fromCore:(id)core
{
  dataCopy = data;
  sectionCopy = section;
  coreCopy = core;
  v12 = [(BTCrashlogDecoder *)self schemaForCore:coreCopy];
  v13 = v12;
  if (!v12)
  {
    sub_100031674(self, a2, coreCopy);
LABEL_10:
    v16 = 0;
    v15 = 0;
LABEL_14:
    v18 = 0;
    goto LABEL_5;
  }

  v14 = [v12 objectForKeyedSubscript:sectionCopy];
  if (!v14)
  {
    v21 = sub_100025204();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_opt_class() description];
      v24 = NSStringFromSelector(a2);
      v27 = 138544130;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      v31 = 2112;
      v32 = sectionCopy;
      v33 = 2112;
      v34 = coreCopy;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unsupported section %@ for core %@", &v27, 0x2Au);
    }

    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 objectForKeyedSubscript:@"size"];
  v17 = [dataCopy length];
  if (v17 < [v16 unsignedIntegerValue])
  {
    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      v26 = NSStringFromSelector(a2);
      v27 = 138544642;
      v28 = v25;
      v29 = 2114;
      v30 = v26;
      v31 = 2048;
      v32 = [dataCopy length];
      v33 = 2112;
      v34 = coreCopy;
      v35 = 2112;
      v36 = sectionCopy;
      v37 = 2048;
      unsignedIntegerValue = [v16 unsignedIntegerValue];
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected size %lu for %@:%@, expected %lu", &v27, 0x3Eu);
    }

    goto LABEL_14;
  }

  v18 = [(BTCrashlogDecoder *)self decodeData:dataCopy withSchema:v15];
LABEL_5:
  v19 = v18;

  return v18;
}

@end