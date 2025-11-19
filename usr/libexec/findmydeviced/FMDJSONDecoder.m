@interface FMDJSONDecoder
+ (BOOL)checkAndSetOutError:(id *)a3 WithError:(id)a4;
+ (id)decodeCollectionClass:(Class)a3 fromData:(id)a4 usingObjectKeyType:(id)a5 forObjectClass:(Class)a6 error:(id *)a7;
+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5;
+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 usingFactory:(id)a5 error:(id *)a6;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (BOOL)isValidObject:(id)a3 usingProtocols:(id)a4;
- (FMDJSONDecoder)init;
- (FMDJSONDecoder)initWithArrayData:(id)a3 andError:(id *)a4;
- (FMDJSONDecoder)initWithData:(id)a3 error:(id *)a4;
- (FMDJSONDecoder)initWithData:(id)a3 usingCollectionObjectKeyType:(id)a4 andCollectionObjectClass:(Class)a5 error:(id *)a6;
- (FMDJSONDecoder)initWithDictionary:(id)a3;
- (FMDJSONDecoder)initWithDictionaryData:(id)a3 andError:(id *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)decodeArrayCollection:(id)a3 usingFactory:(id)a4 error:(id *)a5;
- (id)decodeCodableClass:(Class)a3 withJSONObject:(id)a4 usingFactory:(id)a5 error:(id *)a6;
- (id)decodeCodableClass:(Class)a3 withJSONObject:(id)a4 usingObjectKeyType:(id)a5 error:(id *)a6;
- (id)decodeCollectionOfClass:(Class)a3 fromJSONObject:(id)a4 usingFactory:(id)a5 error:(id *)a6;
- (id)decodeCollectionOfClass:(Class)a3 usingFactory:(id)a4 forKey:(id)a5 error:(id *)a6;
- (id)decodeDictionaryCollection:(id)a3 usingFactory:(id)a4 error:(id *)a5;
- (id)decodeNumberForKey:(id)a3;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5;
- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4 usingFactory:(id)a5 error:(id *)a6;
- (id)decodeObjectOfProtocols:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)decodeObjectUsingFactories:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)decodeStringForKey:(id)a3;
- (id)processJSON:(id)a3 forCodableType:(Class)a4 usingFactory:(id)a5 error:(id *)a6;
- (int64_t)decodeIntegerForKey:(id)a3;
- (unint64_t)decodeUnsignedIntegerForKey:(id)a3;
@end

@implementation FMDJSONDecoder

- (FMDJSONDecoder)init
{
  v10.receiver = self;
  v10.super_class = FMDJSONDecoder;
  v2 = [(FMDJSONDecoder *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    container = v2->_container;
    v2->_container = v3;

    v5 = objc_alloc_init(NSMutableArray);
    stack = v2->_stack;
    v2->_stack = v5;

    v7 = objc_opt_new();
    factory = v2->_factory;
    v2->_factory = v7;
  }

  return v2;
}

- (FMDJSONDecoder)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v8;

    v16 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v16];
    v11 = v16;
    objc_storeStrong(&v7->_jsonObject, v10);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = 16;
    if (isKindOfClass)
    {
      v13 = 24;
    }

    objc_storeStrong((&v7->super.isa + v13), v10);
    if (a4 && v11)
    {
      v14 = v11;
      *a4 = v11;
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithData:(id)a3 usingCollectionObjectKeyType:(id)a4 andCollectionObjectClass:(Class)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v22.receiver = self;
  v22.super_class = FMDJSONDecoder;
  v12 = [(FMDJSONDecoder *)&v22 init];
  if (v12)
  {
    v13 = objc_opt_new();
    factory = v12->_factory;
    v12->_factory = v13;

    objc_storeStrong(&v12->_collectionObjectClass, a5);
    objc_storeStrong(&v12->_collectionObjectKeyType, a4);
    v21 = 0;
    v15 = [NSJSONSerialization JSONObjectWithData:v10 options:4 error:&v21];
    v16 = v21;
    objc_storeStrong(&v12->_jsonObject, v15);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = 16;
    if (isKindOfClass)
    {
      v18 = 24;
    }

    objc_storeStrong((&v12->super.isa + v18), v15);
    if (a6 && v16)
    {
      v19 = v16;
      *a6 = v16;
    }
  }

  return v12;
}

- (FMDJSONDecoder)initWithDictionaryData:(id)a3 andError:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v16];
    v9 = v16;
    container = v7->_container;
    v7->_container = v8;

    v11 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v11;

    if (a4 && v9)
    {
      v13 = [v9 code];
      v14 = [v9 userInfo];
      *a4 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:v13 userInfo:v14];
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithArrayData:(id)a3 andError:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v6 options:4 error:&v16];
    v9 = v16;
    stack = v7->_stack;
    v7->_stack = v8;

    v11 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v11;

    if (a4 && v9)
    {
      v13 = [v9 code];
      v14 = [v9 userInfo];
      *a4 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:v13 userInfo:v14];
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FMDJSONDecoder;
  v5 = [(FMDJSONDecoder *)&v11 init];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithDictionary:v4];
    container = v5->_container;
    v5->_container = v6;

    v8 = objc_opt_new();
    factory = v5->_factory;
    v5->_factory = v8;
  }

  return v5;
}

- (BOOL)containsValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FMDJSONDecoder *)self container];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)decodeDoubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [(FMDJSONDecoder *)self container];
    v9 = [v8 objectForKey:v4];
    [v9 doubleValue];
    v7 = v10;
  }

  return v7;
}

- (float)decodeFloatForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [(FMDJSONDecoder *)self container];
    v9 = [v8 objectForKey:v4];
    [v9 floatValue];
    v7 = v10;
  }

  return v7;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FMDJSONDecoder *)self container];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)decodeUnsignedIntegerForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FMDJSONDecoder *)self container];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)decodeNumberForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FMDJSONDecoder *)self container];
    v8 = [v7 objectForKey:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(FMDJSONDecoder *)self container];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FMDJSONDecoder *)self container];
    v8 = [v7 objectForKey:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = sub_10017DAFC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FACC();
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    v16 = [(FMDJSONDecoder *)self container];
    v14 = [v16 objectForKey:v8];

    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
      goto LABEL_15;
    }

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Object does not conform to given class.";
    v17 = &v24;
    v18 = &v23;
  }

  else
  {
    if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
    {
      v10 = objc_alloc_init(FMDJSONDecoder);
      v11 = [(FMDJSONDecoder *)self container];
      v12 = [v11 objectForKey:v8];

      if (v12)
      {
        v13 = [(FMDJSONDecoder *)self factory];
        v20 = 0;
        v14 = [(FMDJSONDecoder *)v10 processJSON:v12 forCodableType:a3 usingFactory:v13 error:&v20];
        v15 = v20;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      goto LABEL_14;
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Object does not conform to FMDCodable.";
    v17 = &v22;
    v18 = &v21;
  }

  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:1];
  v15 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v10];
  v14 = 0;
LABEL_14:

LABEL_15:
  [FMDJSONDecoder checkAndSetOutError:a5 WithError:v15];

  return v14;
}

- (id)decodeObjectOfClass:(Class)a3 forKey:(id)a4 usingFactory:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = sub_10017DAFC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = a3;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "decodeObjectOfClass:%@ forKey:%@ usingFactory:%@", buf, 0x20u);
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    v13 = [(FMDJSONDecoder *)self container];
    v16 = [(FMDJSONDecoder *)v13 objectForKey:v10];
    v17 = 0;
  }

  else if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v13 = objc_alloc_init(FMDJSONDecoder);
    v14 = [(FMDJSONDecoder *)self container];
    v15 = [v14 objectForKey:v10];

    v19 = 0;
    v16 = [(FMDJSONDecoder *)v13 processJSON:v15 forCodableType:a3 usingFactory:v11 error:&v19];
    v17 = v19;
  }

  else
  {
    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"Object does not conform to FMDCodable.";
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v13];
    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v17];

  return v16;
}

- (id)decodeObjectOfProtocols:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10017DAFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FB34();
  }

  v11 = [(FMDJSONDecoder *)self container];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [(FMDJSONDecoder *)self factory];
    v21 = 0;
    v15 = [(FMDJSONDecoder *)self processJSON:v12 forCodableType:v13 usingFactory:v14 error:&v21];
    v16 = v21;

    [FMDJSONDecoder checkAndSetOutError:a5 WithError:v16];
    v17 = [(FMDJSONDecoder *)self isValidObject:v15 usingProtocols:v8];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)decodeObjectUsingFactories:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10017DAFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FB9C();
  }

  v11 = [(FMDJSONDecoder *)self container];
  v12 = [v11 objectForKey:v9];

  v13 = &ADClientAddValueForScalarKey_ptr;
  p_vtable = FMDAccessorySerialNumbers.vtable;
  if (v12 == objc_opt_class() || v12 == objc_opt_class() || v12 == objc_opt_class())
  {
    v23 = v12;
    v24 = 0;
  }

  else if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v15 = v12;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v37 = a5;
      v19 = *v41;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v40 + 1) + 8 * i) classForObjectInfo:v15];
          if (v21)
          {
            v22 = v21;
            goto LABEL_22;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_22:
      a5 = v37;
      v13 = &ADClientAddValueForScalarKey_ptr;
    }

    else
    {
      v22 = 0;
    }

    p_vtable = FMDAccessorySerialNumbers.vtable;
    v27 = [[FMDJSONDecoder alloc] initWithDictionary:v15];
    v28 = [(FMDJSONDecoder *)self factory];
    [(FMDJSONDecoder *)v27 setFactory:v28];

    v39 = 0;
    v23 = [[v22 alloc] initWithFMDCoder:v27 error:&v39];
    v29 = v39;
    if (v29)
    {
      v38 = v29;
      v34 = +[NSMutableDictionary dictionary];
      v30 = v13[402];
      v31 = [0 userInfo];
      [v31 objectForKey:NSLocalizedFailureReasonErrorKey];
      v32 = v36 = v27;
      v35 = [v30 stringWithFormat:@"Key: %@ | Error: %@", v9, v32];

      [v34 setObject:v35 forKey:NSLocalizedFailureReasonErrorKey];
      [v34 setObject:v38 forKey:NSUnderlyingErrorKey];
      v33 = [0 domain];
      p_vtable = (FMDAccessorySerialNumbers + 24);
      v24 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v33, [0 code], v34);

      v27 = v36;
      v29 = v38;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v44 = NSLocalizedFailureReasonErrorKey;
    v45 = @"Object does not conform to FMDCodable.";
    v26 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v24 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v26];

    v23 = 0;
  }

  [p_vtable + 337 checkAndSetOutError:a5 WithError:v24];

  return v23;
}

- (BOOL)isValidObject:(id)a3 usingProtocols:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10017DAFC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FC04();
  }

  v9 = [(FMDJSONDecoder *)self protocols];
  if (v9)
  {
    v10 = [(FMDJSONDecoder *)self protocols];
    v11 = [v7 setByAddingObjectsFromSet:v10];
  }

  else
  {
    v11 = v7;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 allObjects];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![v6 conformsToProtocol:*(*(&v19 + 1) + 8 * i)])
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_16:

  return v17;
}

- (id)decodeCodableClass:(Class)a3 withJSONObject:(id)a4 usingFactory:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = sub_10017DAFC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = a3;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "decodeCodableClass:%@ withJSONObject:%@ usingFactory:%@", buf, 0x20u);
  }

  if (objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v12 = v9;
    v13 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[FMDJSONDecoder alloc] initWithDictionary:v9];
      [(FMDJSONDecoder *)v14 setFactory:v10];
      v17 = 0;
      v12 = [[a3 alloc] initWithFMDCoder:v14 error:&v17];
      v13 = v17;
    }

    else
    {
      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"FMDCodable Class mismatch.";
      v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v15];

      v12 = 0;
    }
  }

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v13];

  return v12;
}

- (id)decodeCodableClass:(Class)a3 withJSONObject:(id)a4 usingObjectKeyType:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = sub_10017DAFC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v25 = a3;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "decodeCodableClass:%@ withJSONObject:%@ usingObjectKeyType:%@", buf, 0x20u);
  }

  v12 = [[FMDJSONDecoder alloc] initWithDictionary:v9];
  v13 = [(FMDJSONDecoder *)v12 container];
  v14 = [v13 allKeys];
  v15 = [v14 containsObject:v10];

  if (v15)
  {
    v21 = 0;
    v16 = [[a3 alloc] initWithFMDCoder:v12 error:&v21];
    v17 = v21;
  }

  else
  {
    v22 = NSLocalizedFailureReasonErrorKey;
    v18 = [NSString stringWithFormat:@"Unsupported object class key - %@", v10];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v19];

    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v17];

  return v16;
}

- (id)processJSON:(id)a3 forCodableType:(Class)a4 usingFactory:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = sub_10017DAFC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v10;
    v25 = 2112;
    v26 = a4;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processJSON:%@ forCodableType:%@ usingFactory:%@", buf, 0x20u);
  }

  v13 = sub_10017DAFC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FC6C(self, v13);
  }

  if ([(objc_class *)a4 conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    v20 = 0;
    v14 = [(FMDJSONDecoder *)self decodeCollectionOfClass:a4 fromJSONObject:v10 usingFactory:v11 error:&v20];
    v15 = v20;
LABEL_9:
    v16 = v15;
    goto LABEL_11;
  }

  if ([(objc_class *)a4 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v19 = 0;
    v14 = [(FMDJSONDecoder *)self decodeCodableClass:a4 withJSONObject:v10 usingFactory:v11 error:&v19];
    v15 = v19;
    goto LABEL_9;
  }

  v21 = NSLocalizedFailureReasonErrorKey;
  v22 = @"Object does not conform to FMDCodable.";
  v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v16 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v17];

  v14 = 0;
LABEL_11:
  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v16];

  return v14;
}

- (id)decodeCollectionOfClass:(Class)a3 usingFactory:(id)a4 forKey:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = sub_10017DAFC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = a3;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "decodeCollectionOfClass:%@ usingFactory:%@ forKey:%@", buf, 0x20u);
  }

  v13 = [(FMDJSONDecoder *)self container];
  v14 = [v13 objectForKey:v11];

  if (v14)
  {
    v18 = 0;
    v15 = [(FMDJSONDecoder *)self decodeCollectionOfClass:a3 fromJSONObject:v14 usingFactory:v10 error:&v18];
    v16 = v18;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v16];

  return v15;
}

- (id)decodeCollectionOfClass:(Class)a3 fromJSONObject:(id)a4 usingFactory:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = sub_10017DAFC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v27 = a3;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "decodeCollectionOfClass:%@ fromJSONObject:%@ usingFactory:%@", buf, 0x20u);
  }

  if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0;
        v13 = v10;
        v14 = [(FMDJSONDecoder *)self decodeArrayCollection:v13 usingFactory:v11 error:&v21];
        v15 = v21;
LABEL_11:
        v16 = v15;
        goto LABEL_14;
      }
    }

    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0;
        v13 = v10;
        v14 = [(FMDJSONDecoder *)self decodeDictionaryCollection:v13 usingFactory:v11 error:&v20];
        v15 = v20;
        goto LABEL_11;
      }
    }

    v24 = NSLocalizedFailureReasonErrorKey;
    v13 = NSStringFromClass(a3);
    v17 = [NSString stringWithFormat:@"Object Type mismatch: %@", v13];
    v25 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v18];
  }

  else
  {
    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = @"Object does not conform to FMDCodableCollection.";
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v13];
  }

  v14 = 0;
LABEL_14:

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v16];

  return v14;
}

- (id)decodeArrayCollection:(id)a3 usingFactory:(id)a4 error:(id *)a5
{
  v32 = a5;
  v7 = a3;
  v8 = a4;
  v9 = sub_10017DAFC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FD30();
  }

  v10 = +[NSMutableArray array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v7;
  p_vtable = FMDAccessorySerialNumbers.vtable;
  v13 = &ADClientAddValueForScalarKey_ptr;
  v34 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v34)
  {
    v33 = *v39;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v39 != v33)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v38 + 1) + 8 * v14);
      v16 = objc_alloc_init((p_vtable + 337));
      [v16 setFactory:v8];
      v17 = v13[510];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (![(FMDJSONDecoder *)self collectionObjectClass])
      {
        v29 = objc_opt_class();
        v35 = 0;
        v20 = [v16 processJSON:v15 forCodableType:v29 usingFactory:v8 error:&v35];
        v21 = v35;
LABEL_14:
        v28 = v21;
        if (v28)
        {
LABEL_18:

          v30 = 0;
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v22 = [(FMDJSONDecoder *)self collectionObjectClass];
      [(FMDJSONDecoder *)self collectionObjectKeyType];
      v23 = v8;
      v24 = p_vtable;
      v25 = v10;
      v27 = v26 = v11;
      v36 = 0;
      v20 = [(FMDJSONDecoder *)self decodeCodableClass:v22 withJSONObject:v15 usingObjectKeyType:v27 error:&v36];
      v28 = v36;

      v11 = v26;
      v10 = v25;
      p_vtable = v24;
      v8 = v23;
      v13 = &ADClientAddValueForScalarKey_ptr;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_15:
      [v10 addObject:{v20, v32}];

      if (v34 == ++v14)
      {
        v34 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v34)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    v18 = v13[510];
    v19 = objc_opt_class();
    v37 = 0;
    v20 = [v16 processJSON:v15 forCodableType:v19 usingFactory:v8 error:&v37];
    v21 = v37;
    goto LABEL_14;
  }

LABEL_17:

  v30 = [v13[510] arrayWithArray:v10];
  v28 = 0;
LABEL_19:
  [p_vtable + 337 checkAndSetOutError:v32 WithError:{v28, v32}];

  return v30;
}

- (id)decodeDictionaryCollection:(id)a3 usingFactory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10017DAFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v81 = v8;
    v82 = 2112;
    v83 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "decodeDictionaryCollection:%@ usingFactory:%@", buf, 0x16u);
  }

  p_vtable = (FMDAccessorySerialNumbers + 24);
  if ([v8 count])
  {
    v12 = [v9 classForObjectInfo:v8];
    if (v12)
    {
      v76 = 0;
      v13 = [(FMDJSONDecoder *)self decodeCodableClass:v12 withJSONObject:v8 usingFactory:v9 error:&v76];
      v14 = v76;
      goto LABEL_47;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v73;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v73 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v72 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v17);

      v21 = +[NSMutableDictionary dictionary];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v15;
      p_vtable = FMDAccessorySerialNumbers.vtable;
      v51 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
      if (v51)
      {
        v50 = *v69;
        v22 = &ADClientAddValueForScalarKey_ptr;
LABEL_17:
        v23 = 0;
        while (1)
        {
          v24 = v21;
          if (*v69 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v68 + 1) + 8 * v23);
          v26 = objc_alloc_init((p_vtable + 337));
          v55 = v25;
          v27 = [obj objectForKey:v25];
          v28 = v22[510];
          objc_opt_class();
          v57 = v27;
          v58 = v26;
          v56 = v23;
          if (objc_opt_isKindOfClass())
          {
            v29 = v22[510];
            v30 = objc_opt_class();
            v67 = 0;
            v31 = [v26 processJSON:v27 forCodableType:v30 usingFactory:v9 error:&v67];
            v32 = v67;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v27;
              v34 = [v9 classForObjectInfo:v33];
              v21 = v24;
              if (v34)
              {
                v66 = 0;
                v53 = [v58 processJSON:v33 forCodableType:v34 usingFactory:v9 error:&v66];
                v14 = v66;
              }

              else if ([(FMDJSONDecoder *)self collectionObjectClass])
              {
                v36 = [(FMDJSONDecoder *)self collectionObjectClass];
                v37 = [(FMDJSONDecoder *)self collectionObjectKeyType];
                v65 = 0;
                v53 = [(FMDJSONDecoder *)self decodeCodableClass:v36 withJSONObject:v33 usingObjectKeyType:v37 error:&v65];
                v14 = v65;

                v22 = &ADClientAddValueForScalarKey_ptr;
              }

              else
              {
                v53 = +[NSMutableDictionary dictionary];
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v52 = v33;
                v49 = [v52 countByEnumeratingWithState:&v61 objects:v77 count:16];
                if (v49)
                {
                  v46 = v24;
                  v47 = *v62;
                  v38 = v58;
                  v48 = v33;
                  while (2)
                  {
                    for (j = 0; j != v49; j = j + 1)
                    {
                      if (*v62 != v47)
                      {
                        objc_enumerationMutation(v52);
                      }

                      v40 = *(*(&v61 + 1) + 8 * j);
                      v41 = [v52 objectForKey:v40];
                      v42 = [v52 objectForKey:v40];
                      v43 = objc_opt_class();
                      v60 = 0;
                      v44 = [v38 processJSON:v41 forCodableType:v43 usingFactory:v9 error:&v60];
                      v14 = v60;

                      if (v14)
                      {

                        p_vtable = (FMDAccessorySerialNumbers + 24);
                        v21 = v46;
                        v22 = &ADClientAddValueForScalarKey_ptr;
                        v33 = v48;
                        goto LABEL_41;
                      }

                      [v53 setObject:v44 forKey:v40];

                      v33 = v48;
                      v38 = v58;
                    }

                    v49 = [v52 countByEnumeratingWithState:&v61 objects:v77 count:16];
                    if (v49)
                    {
                      continue;
                    }

                    break;
                  }

                  v14 = 0;
                  p_vtable = (FMDAccessorySerialNumbers + 24);
                  v21 = v46;
                  v22 = &ADClientAddValueForScalarKey_ptr;
                }

                else
                {
                  v14 = 0;
                }

LABEL_41:
              }

              v31 = v53;
              if (v14)
              {
LABEL_50:

                v13 = 0;
                goto LABEL_51;
              }

              goto LABEL_43;
            }

            v35 = objc_opt_class();
            v59 = 0;
            v31 = [v26 processJSON:v27 forCodableType:v35 usingFactory:v9 error:&v59];
            v32 = v59;
          }

          v14 = v32;
          v21 = v24;
          if (v14)
          {
            goto LABEL_50;
          }

LABEL_43:
          [v21 setObject:v31 forKey:v55];

          v23 = v56 + 1;
          if ((v56 + 1) == v51)
          {
            v51 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
            if (v51)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      v13 = [NSDictionary dictionaryWithDictionary:v21];
      v14 = 0;
LABEL_51:
    }

    else
    {
LABEL_46:

      v13 = 0;
      v14 = 0;
      p_vtable = FMDAccessorySerialNumbers.vtable;
    }
  }

  else
  {
    v13 = v8;
    v14 = 0;
  }

LABEL_47:
  [p_vtable + 337 checkAndSetOutError:a5 WithError:v14];

  return v13;
}

+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 usingFactory:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Unsupported nil data found";
    v16 = &v24;
    v17 = &v23;
LABEL_7:
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:1];
    v12 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v11];
    goto LABEL_8;
  }

  if (![(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Unsupported object class.";
    v16 = &v22;
    v17 = &v21;
    goto LABEL_7;
  }

  v20 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:v9 options:4 error:&v20];
  v12 = v20;
  if (!v12)
  {
    v13 = objc_alloc_init(FMDJSONDecoder);
    [(FMDJSONDecoder *)v13 setFactory:v10];
    v19 = 0;
    v14 = [(FMDJSONDecoder *)v13 processJSON:v11 forCodableType:a3 usingFactory:v10 error:&v19];
    v15 = v19;

    goto LABEL_9;
  }

LABEL_8:
  v15 = v12;
  v14 = 0;
LABEL_9:

  [FMDJSONDecoder checkAndSetOutError:a6 WithError:v15];

  return v14;
}

+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [FMDJSONDecoder decodeObjectOfClass:a3 fromData:v7 usingFactory:v8 error:a5];

  return v9;
}

+ (id)decodeCollectionClass:(Class)a3 fromData:(id)a4 usingObjectKeyType:(id)a5 forObjectClass:(Class)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  if (![(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = @"Unsupported collection class.";
    v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v14 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v13];
    goto LABEL_6;
  }

  v26 = 0;
  v13 = [[FMDJSONDecoder alloc] initWithData:v11 usingCollectionObjectKeyType:v12 andCollectionObjectClass:a6 error:&v26];
  v14 = v26;
  if (v14)
  {
LABEL_6:
    v20 = v14;
    v21 = 0;
    goto LABEL_7;
  }

  v15 = [(FMDJSONDecoder *)v13 container];

  if (v15)
  {
    v16 = [(FMDJSONDecoder *)v13 container];
    v17 = [(FMDJSONDecoder *)v13 factory];
    v25 = 0;
    v18 = &v25;
    v19 = &v25;
LABEL_12:
    v21 = [(FMDJSONDecoder *)v13 processJSON:v16 forCodableType:a3 usingFactory:v17 error:v19, v24, v25];
    v20 = *v18;

    goto LABEL_7;
  }

  v23 = [(FMDJSONDecoder *)v13 stack];

  if (v23)
  {
    v16 = [(FMDJSONDecoder *)v13 stack];
    v17 = [(FMDJSONDecoder *)v13 factory];
    v24 = 0;
    v18 = &v24;
    v19 = &v24;
    goto LABEL_12;
  }

  v21 = 0;
  v20 = 0;
LABEL_7:

  [FMDJSONDecoder checkAndSetOutError:a7 WithError:v20];

  return v21;
}

+ (BOOL)checkAndSetOutError:(id *)a3 WithError:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = sub_10017DAFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022FD98(v5, v6);
    }

    if (a3)
    {
      v7 = v5;
      *a3 = v5;
    }
  }

  return v5 == 0;
}

@end