@interface FMDJSONEncoder
+ (BOOL)checkAndSetOutError:(id *)error WithError:(id)withError;
+ (id)encodedDataWithRootObject:(id)object error:(id *)error;
+ (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error;
+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)options;
- (BOOL)encodeCollectionObject:(id)object error:(id *)error;
- (BOOL)encodeObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)encodeObjects:(id)objects forKey:(id)key error:(id *)error;
- (FMDJSONEncoder)init;
- (FMDJSONEncoder)initWithRootObject:(id)object error:(id *)error;
- (id)encodeArrayCollectionObject:(id)object error:(id *)error;
- (id)encodeStringKeysDictionaryCollectionObject:(id)object error:(id *)error;
- (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error;
- (id)processObject:(id)object error:(id *)error;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeNumber:(id)number forKey:(id)key;
- (void)encodeObjectTypeUsingClass:(Class)class;
- (void)encodeString:(id)string forKey:(id)key;
- (void)encodeUnsignedInteger:(unint64_t)integer forKey:(id)key;
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

- (FMDJSONEncoder)initWithRootObject:(id)object error:(id *)error
{
  objectCopy = object;
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
  v12 = [(FMDJSONEncoder *)v7 processObject:objectCopy error:&v16];
  v13 = v16;
  if (v13)
  {
    if (error)
    {
      v13 = v13;
      *error = v13;
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

- (BOOL)encodeObject:(id)object forKey:(id)key error:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  v10 = sub_10017DAFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A688();
  }

  p_info = &OBJC_METACLASS___FMDXPCManager.info;
  if (objectCopy)
  {
    v12 = +[NSNull null];

    if (v12 == objectCopy)
    {
      container = [(FMDJSONEncoder *)self container];
      [(FMDJSONEncoder *)container setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      v30 = 0;
      container = [[FMDJSONEncoder alloc] initWithRootObject:objectCopy error:&v30];
      v14 = v30;
      if (v14)
      {
        v15 = v14;
        userInfo = [v14 userInfo];
        container2 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

        keyCopy = [NSString stringWithFormat:@"Failed Key: %@", keyCopy];
        [container2 setObject:keyCopy forKey:NSLocalizedRecoverySuggestionErrorKey];

        userInfo2 = [v15 userInfo];
        if (userInfo2)
        {
          v20 = userInfo2;
          userInfo3 = [v15 userInfo];
          v22 = [userInfo3 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

          if (v22)
          {
            userInfo4 = [v15 userInfo];
            v24 = [userInfo4 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
            [container2 setObject:v24 forKey:NSLocalizedFailureReasonErrorKey];
          }
        }

        domain = [v15 domain];
        v26 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v15 code], container2);

        p_info = (&OBJC_METACLASS___FMDXPCManager + 32);
        goto LABEL_19;
      }

      if ([(FMDJSONEncoder *)container rootType]== 1)
      {
        container2 = [(FMDJSONEncoder *)self container];
        stack = [(FMDJSONEncoder *)container stack];
LABEL_18:
        domain = stack;
        [container2 setObject:stack forKey:keyCopy];
        v26 = 0;
LABEL_19:

        goto LABEL_20;
      }

      if (![(FMDJSONEncoder *)container rootType])
      {
        container2 = [(FMDJSONEncoder *)self container];
        stack = [(FMDJSONEncoder *)container container];
        goto LABEL_18;
      }
    }
  }

  else
  {
    container = sub_10017DAFC();
    if (os_log_type_enabled(&container->super, OS_LOG_TYPE_DEBUG))
    {
      sub_10022A6FC();
    }
  }

  v26 = 0;
LABEL_20:

  v28 = [p_info + 411 checkAndSetOutError:error WithError:v26];
  return v28;
}

- (BOOL)encodeObjects:(id)objects forKey:(id)key error:(id *)error
{
  objectsCopy = objects;
  keyCopy = key;
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
  v11 = objectsCopy;
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

          userInfo = [v23 userInfo];
          container2 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

          keyCopy = [NSString stringWithFormat:@"Failed Key: %@", keyCopy];
          [container2 setObject:keyCopy forKey:NSLocalizedRecoverySuggestionErrorKey];

          userInfo2 = [v23 userInfo];
          if (userInfo2)
          {
            v27 = userInfo2;
            userInfo3 = [v23 userInfo];
            v29 = [userInfo3 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

            if (v29)
            {
              userInfo4 = [v23 userInfo];
              v31 = [userInfo4 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
              [container2 setObject:v31 forKey:NSLocalizedFailureReasonErrorKey];
            }
          }

          domain = [v23 domain];
          v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v23 code], container2);

          goto LABEL_16;
        }

        container = [(FMDJSONEncoder *)v18 container];
        [v10 addObject:container];

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

  container2 = [(FMDJSONEncoder *)self container];
  [container2 setObject:v10 forKey:keyCopy];
  v22 = 0;
LABEL_16:

  v33 = [FMDJSONEncoder checkAndSetOutError:error WithError:v22];
  return v33;
}

- (void)encodeString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      container = [(FMDJSONEncoder *)self container];
      [container setObject:stringCopy forKey:keyCopy];
    }
  }
}

- (void)encodeNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  if (numberCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      container = [(FMDJSONEncoder *)self container];
      [container setObject:numberCopy forKey:keyCopy];
    }
  }
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithInteger:integer];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeUnsignedInteger:(unint64_t)integer forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithUnsignedInteger:integer];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithDouble:double];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  *&v7 = float;
  v8 = [NSNumber numberWithFloat:v7];
  [container setObject:v8 forKey:keyCopy];
}

- (void)encodeObjectTypeUsingClass:(Class)class
{
  container = [(FMDJSONEncoder *)self container];
  objectType = [(objc_class *)class objectType];
  objectTypeKey = [(objc_class *)class objectTypeKey];
  [container setObject:objectType forKey:objectTypeKey];
}

- (id)processObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = sub_10017DAFC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = objectCopy;
    v25 = 2048;
    rootType = [(FMDJSONEncoder *)self rootType];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "processObject:%@ root-type:%lu", buf, 0x16u);
  }

  v8 = sub_10017DAFC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A7E0(self, v8);
  }

  if (([objectCopy conformsToProtocol:&OBJC_PROTOCOL___FMDCodable] & 1) == 0)
  {
    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Object not supported by encoder";
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [NSError errorWithDomain:@"FMJSONEncoderError" code:-1 userInfo:v13];

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v9 = [objectCopy conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection];
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
    [(FMDJSONEncoder *)self encodeCollectionObject:objectCopy error:&v20];
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
    [objectCopy encodeWithFMDCoder:self error:&v19];
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

    stack = [(FMDJSONEncoder *)self stack];
  }

  else
  {
    stack = [(FMDJSONEncoder *)self container];
  }

  v16 = stack;
LABEL_26:
  v14 = 0;
LABEL_17:
  [FMDJSONEncoder checkAndSetOutError:error WithError:v14];

  return v16;
}

- (BOOL)encodeCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
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
    v8 = [(FMDJSONEncoder *)self encodeArrayCollectionObject:objectCopy error:&v25];
    v9 = v25;
    if (!v9)
    {
      stack = [(FMDJSONEncoder *)self stack];
      [stack addObjectsFromArray:v8];
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
    v11 = objectCopy;
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
            stack = [(FMDJSONEncoder *)self container];
            [stack addEntriesFromDictionary:v8];
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
  v17 = [FMDJSONEncoder checkAndSetOutError:error WithError:v9];

  return v17;
}

- (id)encodeArrayCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
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
  v8 = objectCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  errorCopy = error;
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

    [v7 addObject:{v13, errorCopy}];
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
    [v7 addObject:{v17, errorCopy}];

    goto LABEL_12;
  }

  v19 = v16;

LABEL_22:
  error = errorCopy;
LABEL_24:

  [FMDJSONEncoder checkAndSetOutError:error WithError:v19];

  return v7;
}

- (id)encodeStringKeysDictionaryCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = sub_10017DAFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = objectCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "encodeStringKeysDictionaryCollectionObject:%@", buf, 0xCu);
  }

  v7 = +[NSMutableDictionary dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = objectCopy;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v9)
  {
    v28 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  errorCopy = error;
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
  error = errorCopy;
LABEL_25:

  [FMDJSONEncoder checkAndSetOutError:error WithError:v28];

  return v7;
}

- (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    v16[0] = 0;
    v9 = [(FMDJSONEncoder *)self processObject:objectCopy error:v16];
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
      v12 = +[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v9, [objc_opt_class() convertToNSJSONWritingOptions:options], &v15);
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

  [FMDJSONEncoder checkAndSetOutError:error WithError:v13];

  return v12;
}

+ (BOOL)checkAndSetOutError:(id *)error WithError:(id)withError
{
  withErrorCopy = withError;
  if (withErrorCopy)
  {
    v6 = sub_10017DAFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022AA04();
    }

    if (error)
    {
      v7 = withErrorCopy;
      *error = withErrorCopy;
    }
  }

  return withErrorCopy == 0;
}

+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)options
{
  if (options - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return options;
  }
}

+ (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error
{
  objectCopy = object;
  v8 = objc_alloc_init(FMDJSONEncoder);
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = objectCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v13 = 0;
  v10 = [(FMDJSONEncoder *)v8 encodedDataWithRootObject:objectCopy options:options error:&v13];
  v11 = v13;
  [FMDJSONEncoder checkAndSetOutError:error WithError:v11];

  return v10;
}

+ (id)encodedDataWithRootObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = objc_alloc_init(FMDJSONEncoder);
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = objectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v11 = 0;
  v8 = [(FMDJSONEncoder *)v6 encodedDataWithRootObject:objectCopy options:3 error:&v11];
  v9 = v11;
  [FMDJSONEncoder checkAndSetOutError:error WithError:v9];

  return v8;
}

@end