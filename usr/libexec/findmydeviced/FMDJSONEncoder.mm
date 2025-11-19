@interface FMDJSONEncoder
+ (BOOL)checkAndSetOutError:(id *)a3 WithError:(id)a4;
+ (id)encodedDataWithRootObject:(id)a3 error:(id *)a4;
+ (id)encodedDataWithRootObject:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)a3;
- (BOOL)encodeCollectionObject:(id)a3 error:(id *)a4;
- (BOOL)encodeObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)encodeObjects:(id)a3 forKey:(id)a4 error:(id *)a5;
- (FMDJSONEncoder)init;
- (FMDJSONEncoder)initWithRootObject:(id)a3 error:(id *)a4;
- (id)encodeArrayCollectionObject:(id)a3 error:(id *)a4;
- (id)encodeStringKeysDictionaryCollectionObject:(id)a3 error:(id *)a4;
- (id)encodedDataWithRootObject:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)processObject:(id)a3 error:(id *)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeFloat:(float)a3 forKey:(id)a4;
- (void)encodeInteger:(int64_t)a3 forKey:(id)a4;
- (void)encodeNumber:(id)a3 forKey:(id)a4;
- (void)encodeObjectTypeUsingClass:(Class)a3;
- (void)encodeString:(id)a3 forKey:(id)a4;
- (void)encodeUnsignedInteger:(unint64_t)a3 forKey:(id)a4;
@end

@implementation FMDJSONEncoder

- (FMDJSONEncoder)init
{
  v8.receiver = self;
  v8.super_class = FMDJSONEncoder;
  v2 = [(FMDJSONEncoder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    container = v2->_container;
    v2->_container = v3;

    v5 = objc_alloc_init(NSMutableArray);
    stack = v2->_stack;
    v2->_stack = v5;
  }

  return v2;
}

- (FMDJSONEncoder)initWithRootObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = FMDJSONEncoder;
  v7 = [(FMDJSONEncoder *)&v17 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  container = v7->_container;
  v7->_container = v8;

  v10 = objc_alloc_init(NSMutableArray);
  stack = v7->_stack;
  v7->_stack = v10;

  v16 = 0;
  v12 = [(FMDJSONEncoder *)v7 processObject:v6 error:&v16];
  v13 = v16;
  if (v13)
  {
    if (a4)
    {
      v13 = v13;
      *a4 = v13;
    }

    v14 = 0;
  }

  else
  {
LABEL_6:
    v14 = v7;
  }

  return v14;
}

- (BOOL)encodeObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_10017DAFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A688();
  }

  p_info = &OBJC_METACLASS___FMDXPCManager.info;
  if (v8)
  {
    v12 = +[NSNull null];

    if (v12 == v8)
    {
      v13 = [(FMDJSONEncoder *)self container];
      [(FMDJSONEncoder *)v13 setObject:v8 forKey:v9];
    }

    else
    {
      v30 = 0;
      v13 = [[FMDJSONEncoder alloc] initWithRootObject:v8 error:&v30];
      v14 = v30;
      if (v14)
      {
        v15 = v14;
        v16 = [v14 userInfo];
        v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

        v18 = [NSString stringWithFormat:@"Failed Key: %@", v9];
        [v17 setObject:v18 forKey:NSLocalizedRecoverySuggestionErrorKey];

        v19 = [v15 userInfo];
        if (v19)
        {
          v20 = v19;
          v21 = [v15 userInfo];
          v22 = [v21 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

          if (v22)
          {
            v23 = [v15 userInfo];
            v24 = [v23 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
            [v17 setObject:v24 forKey:NSLocalizedFailureReasonErrorKey];
          }
        }

        v25 = [v15 domain];
        v26 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v25, [v15 code], v17);

        p_info = (&OBJC_METACLASS___FMDXPCManager + 32);
        goto LABEL_19;
      }

      if ([(FMDJSONEncoder *)v13 rootType]== 1)
      {
        v17 = [(FMDJSONEncoder *)self container];
        v27 = [(FMDJSONEncoder *)v13 stack];
LABEL_18:
        v25 = v27;
        [v17 setObject:v27 forKey:v9];
        v26 = 0;
LABEL_19:

        goto LABEL_20;
      }

      if (![(FMDJSONEncoder *)v13 rootType])
      {
        v17 = [(FMDJSONEncoder *)self container];
        v27 = [(FMDJSONEncoder *)v13 container];
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = sub_10017DAFC();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEBUG))
    {
      sub_10022A6FC();
    }
  }

  v26 = 0;
LABEL_20:

  v28 = [p_info + 411 checkAndSetOutError:a5 WithError:v26];
  return v28;
}

- (BOOL)encodeObjects:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_10017DAFC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A76C();
  }

  v10 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = [FMDJSONEncoder alloc];
        v36 = 0;
        v18 = [(FMDJSONEncoder *)v17 initWithRootObject:v16 error:&v36];
        v19 = v36;
        if (v19)
        {
          v23 = v19;

          v24 = [v23 userInfo];
          v21 = [NSMutableDictionary dictionaryWithDictionary:v24];

          v25 = [NSString stringWithFormat:@"Failed Key: %@", v8];
          [v21 setObject:v25 forKey:NSLocalizedRecoverySuggestionErrorKey];

          v26 = [v23 userInfo];
          if (v26)
          {
            v27 = v26;
            v28 = [v23 userInfo];
            v29 = [v28 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

            if (v29)
            {
              v30 = [v23 userInfo];
              v31 = [v30 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
              [v21 setObject:v31 forKey:NSLocalizedFailureReasonErrorKey];
            }
          }

          v32 = [v23 domain];
          v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v32, [v23 code], v21);

          goto LABEL_16;
        }

        v20 = [(FMDJSONEncoder *)v18 container];
        [v10 addObject:v20];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = [(FMDJSONEncoder *)self container];
  [v21 setObject:v10 forKey:v8];
  v22 = 0;
LABEL_16:

  v33 = [FMDJSONEncoder checkAndSetOutError:a5 WithError:v22];
  return v33;
}

- (void)encodeString:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(FMDJSONEncoder *)self container];
      [v7 setObject:v8 forKey:v6];
    }
  }
}

- (void)encodeNumber:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(FMDJSONEncoder *)self container];
      [v7 setObject:v8 forKey:v6];
    }
  }
}

- (void)encodeInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v7 forKey:v6];
}

- (void)encodeUnsignedInteger:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKey:v6];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithDouble:a3];
  [v8 setObject:v7 forKey:v6];
}

- (void)encodeFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v9 = [(FMDJSONEncoder *)self container];
  *&v7 = a3;
  v8 = [NSNumber numberWithFloat:v7];
  [v9 setObject:v8 forKey:v6];
}

- (void)encodeObjectTypeUsingClass:(Class)a3
{
  v6 = [(FMDJSONEncoder *)self container];
  v4 = [(objc_class *)a3 objectType];
  v5 = [(objc_class *)a3 objectTypeKey];
  [v6 setObject:v4 forKey:v5];
}

- (id)processObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = sub_10017DAFC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2048;
    v26 = [(FMDJSONEncoder *)self rootType];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "processObject:%@ root-type:%lu", buf, 0x16u);
  }

  v8 = sub_10017DAFC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A7E0(self, v8);
  }

  if (([v6 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable] & 1) == 0)
  {
    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Object not supported by encoder";
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [NSError errorWithDomain:@"FMJSONEncoderError" code:-1 userInfo:v13];

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v9 = [v6 conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection];
  v10 = sub_10017DAFC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      sub_10022A8E4();
    }

    v20 = 0;
    v12 = &v20;
    [(FMDJSONEncoder *)self encodeCollectionObject:v6 error:&v20];
  }

  else
  {
    if (v11)
    {
      sub_10022A8A4();
    }

    [(FMDJSONEncoder *)self setRootType:0];
    v19 = 0;
    v12 = &v19;
    [v6 encodeWithFMDCoder:self error:&v19];
  }

  v15 = *v12;
  if (v15)
  {
    v14 = v15;
    goto LABEL_16;
  }

  if ([(FMDJSONEncoder *)self rootType])
  {
    if ([(FMDJSONEncoder *)self rootType]!= 1)
    {
      v16 = 0;
      goto LABEL_26;
    }

    v18 = [(FMDJSONEncoder *)self stack];
  }

  else
  {
    v18 = [(FMDJSONEncoder *)self container];
  }

  v16 = v18;
LABEL_26:
  v14 = 0;
LABEL_17:
  [FMDJSONEncoder checkAndSetOutError:a4 WithError:v14];

  return v16;
}

- (BOOL)encodeCollectionObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = sub_10017DAFC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A924();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FMDJSONEncoder *)self setRootType:1];
    v25 = 0;
    v8 = [(FMDJSONEncoder *)self encodeArrayCollectionObject:v6 error:&v25];
    v9 = v25;
    if (!v9)
    {
      v10 = [(FMDJSONEncoder *)self stack];
      [v10 addObjectsFromArray:v8];
LABEL_6:
    }

LABEL_7:

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FMDJSONEncoder *)self setRootType:0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
LABEL_11:
      v15 = 0;
      while (1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v13)
          {
            goto LABEL_11;
          }

          v20 = 0;
          v8 = [(FMDJSONEncoder *)self encodeStringKeysDictionaryCollectionObject:v11 error:&v20];
          v9 = v20;
          if (!v9)
          {
            v10 = [(FMDJSONEncoder *)self container];
            [v10 addEntriesFromDictionary:v8];
            goto LABEL_6;
          }

          goto LABEL_7;
        }
      }
    }

    [(FMDJSONEncoder *)self encodeObjectTypeUsingClass:objc_opt_class()];
    v19 = 0;
    [v11 encodeWithFMDCoder:self error:&v19];
    v9 = v19;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_22:
  v17 = [FMDJSONEncoder checkAndSetOutError:a4 WithError:v9];

  return v17;
}

- (id)encodeArrayCollectionObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = sub_10017DAFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A994();
  }

  v7 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v21 = a4;
  v11 = *v24;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }
    }

    [v7 addObject:{v13, v21}];
LABEL_12:
    if (v10 == ++v12)
    {
      v18 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v18;
      if (!v18)
      {
        v19 = 0;
        goto LABEL_22;
      }

      goto LABEL_5;
    }
  }

  v14 = objc_alloc_init(FMDJSONEncoder);
  v22 = 0;
  v15 = [(FMDJSONEncoder *)v14 processObject:v13 error:&v22];
  v16 = v22;
  if (!v16)
  {
    if ([(FMDJSONEncoder *)v14 rootType]== 1)
    {
      [(FMDJSONEncoder *)v14 stack];
    }

    else
    {
      [(FMDJSONEncoder *)v14 container];
    }
    v17 = ;
    [v7 addObject:{v17, v21}];

    goto LABEL_12;
  }

  v19 = v16;

LABEL_22:
  a4 = v21;
LABEL_24:

  [FMDJSONEncoder checkAndSetOutError:a4 WithError:v19];

  return v7;
}

- (id)encodeStringKeysDictionaryCollectionObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = sub_10017DAFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "encodeStringKeysDictionaryCollectionObject:%@", buf, 0xCu);
  }

  v7 = +[NSMutableDictionary dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v9)
  {
    v28 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  v32 = a4;
  v11 = *v36;
  v12 = &ADClientAddValueForScalarKey_ptr;
  v13 = &ADClientAddValueForScalarKey_ptr;
LABEL_5:
  v14 = 0;
  v33 = v10;
  while (1)
  {
    if (*v36 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v15 = *(*(&v35 + 1) + 8 * v14);
    v16 = [v8 objectForKey:v15];
    v17 = v12[402];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v19 = [v8 objectForKey:v15];
    if (isKindOfClass)
    {
      goto LABEL_12;
    }

    v20 = v13[393];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    v19 = [v8 objectForKey:v15];
    if (v21)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if ((v22 & 1) == 0)
    {
      break;
    }

    v19 = [v8 objectForKey:v15];
LABEL_12:
    [v7 setObject:v19 forKey:v15];
LABEL_13:

    if (v10 == ++v14)
    {
      v30 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v10 = v30;
      if (!v30)
      {
        v28 = 0;
        goto LABEL_23;
      }

      goto LABEL_5;
    }
  }

  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19 = objc_alloc_init(FMDJSONEncoder);
  v26 = [v8 objectForKey:v15];
  v34 = 0;
  v27 = [(FMDJSONEncoder *)v19 processObject:v26 error:&v34];
  v28 = v34;

  if (!v28)
  {
    if ([(FMDJSONEncoder *)v19 rootType]== 1)
    {
      [(FMDJSONEncoder *)v19 stack];
    }

    else
    {
      [(FMDJSONEncoder *)v19 container];
    }
    v29 = ;
    v13 = v25;
    [v7 setObject:v29 forKey:v15];

    v12 = v24;
    v11 = v23;
    v10 = v33;
    goto LABEL_13;
  }

LABEL_23:
  a4 = v32;
LABEL_25:

  [FMDJSONEncoder checkAndSetOutError:a4 WithError:v28];

  return v7;
}

- (id)encodedDataWithRootObject:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v16[0] = 0;
    v9 = [(FMDJSONEncoder *)self processObject:v8 error:v16];
    v10 = v16[0];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (!v11)
    {
      v15 = 0;
      v12 = +[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v9, [objc_opt_class() convertToNSJSONWritingOptions:a4], &v15);
      v13 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"object is nil";
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [NSError errorWithDomain:@"FMJSONEncoderError" code:-1 userInfo:v9];
  }

  v13 = v10;
  v12 = 0;
LABEL_9:

  [FMDJSONEncoder checkAndSetOutError:a5 WithError:v13];

  return v12;
}

+ (BOOL)checkAndSetOutError:(id *)a3 WithError:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = sub_10017DAFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022AA04();
    }

    if (a3)
    {
      v7 = v5;
      *a3 = v5;
    }
  }

  return v5 == 0;
}

+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)encodedDataWithRootObject:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(FMDJSONEncoder);
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v13 = 0;
  v10 = [(FMDJSONEncoder *)v8 encodedDataWithRootObject:v7 options:a4 error:&v13];
  v11 = v13;
  [FMDJSONEncoder checkAndSetOutError:a5 WithError:v11];

  return v10;
}

+ (id)encodedDataWithRootObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(FMDJSONEncoder);
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v11 = 0;
  v8 = [(FMDJSONEncoder *)v6 encodedDataWithRootObject:v5 options:3 error:&v11];
  v9 = v11;
  [FMDJSONEncoder checkAndSetOutError:a4 WithError:v9];

  return v8;
}

@end