@interface NSDictionary
- (BOOL)BOOLForCaseInsensitiveStringKey:(id)a3;
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (NSDictionary)initWithFMDCoder:(id)a3 error:(id *)a4;
- (id)flattenedArrayFromObject:(id)a3 parentIndices:(id)a4;
- (id)objectForCaseInsensitiveStringKey:(id)a3;
- (id)stringForCaseInsensitiveStringKey:(id)a3;
@end

@implementation NSDictionary

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v18 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [NSString stringWithFormat:@"FM.key.%ld", v9];
        v20 = 0;
        [v5 encodeObject:v11 forKey:v12 error:&v20];
        v13 = v20;

        v14 = [(NSDictionary *)v6 objectForKey:v11];
        v15 = [NSString stringWithFormat:@"FM.object.%ld", v9];
        v19 = v13;
        [v5 encodeObject:v14 forKey:v15 error:&v19];
        v16 = v19;

        ++v9;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return 1;
}

- (NSDictionary)initWithFMDCoder:(id)a3 error:(id *)a4
{
  v4 = a3;
  v31 = +[NSMutableDictionary dictionary];
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v8 = [NSString stringWithFormat:@"FM.key.%ld", v5];
    v33 = v6;
    v9 = [v4 decodeObjectOfProtocols:v7 forKey:v8 error:&v33];
    v10 = v33;

    if (v10)
    {
      v14 = [v10 userInfo];
      v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

      v38 = NSLocalizedFailureReasonErrorKey;
      v16 = [NSString stringWithFormat:@"Unexpected object nil for key FM.key.%lu", v5];
      v39 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v18 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:v17];
      [v15 setObject:v18 forKeyedSubscript:NSUnderlyingErrorKey];

      v19 = [v10 domain];
      v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v19, [v10 code], v15);

      goto LABEL_11;
    }

    if (!v9)
    {
      v20 = 0;
      goto LABEL_12;
    }

    v11 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v12 = [NSString stringWithFormat:@"FM.object.%ld", v5];
    v32 = 0;
    v13 = [v4 decodeObjectOfProtocols:v11 forKey:v12 error:&v32];
    v6 = v32;

    if (!v13)
    {
      break;
    }

    [v31 setObject:v13 forKey:v9];

    ++v5;
  }

  if (v6)
  {
    v21 = [v6 userInfo];
    v15 = [NSMutableDictionary dictionaryWithDictionary:v21];

    v36 = NSLocalizedFailureReasonErrorKey;
    v22 = [NSString stringWithFormat:@"Unexpected object nil for key FM.object.%lu", v5];
    v37 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v24 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:v23];
    [v15 setObject:v24 forKeyedSubscript:NSUnderlyingErrorKey];

    v19 = [v6 domain];
    v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v19, [v6 code], v15);
  }

  else
  {
    v34 = NSLocalizedFailureReasonErrorKey;
    v15 = [NSString stringWithFormat:@"Unexpected object nil for key FM.object.%lu", v5];
    v35 = v15;
    v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v20 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:v19];
  }

LABEL_11:

LABEL_12:
  if (v20)
  {
    v25 = sub_10017DAFC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100227D3C(v20, v25);
    }

    if (a4)
    {
      v26 = v20;
      *a4 = v20;
    }
  }

  v27 = [(NSDictionary *)self initWithDictionary:v31];

  return v27;
}

- (id)stringForCaseInsensitiveStringKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForCaseInsensitiveStringKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)BOOLForCaseInsensitiveStringKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForCaseInsensitiveStringKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)objectForCaseInsensitiveStringKey:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![v9 compare:v4 options:{1, v11}])
        {
          v6 = [(NSDictionary *)v5 objectForKeyedSubscript:v9];
          goto LABEL_11;
        }
      }

      v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)flattenedArrayFromObject:(id)a3 parentIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000AAD4;
  v28 = sub_100002B34;
  v9 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  v29 = v9;
  v10 = +[NSMutableArray array];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10019BBD8;
    v22[3] = &unk_1002D0488;
    v23[3] = v11;
    v23[4] = v12;
    v23[0] = v10;
    v23[1] = self;
    v23[2] = &v24;
    [v13 enumerateKeysAndObjectsUsingBlock:v22];
    v14 = v23;
LABEL_7:
    v16 = *v14;
    v17 = v6;
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = v6;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10019BD10;
    v20[3] = &unk_1002D04B0;
    v21[2] = &v24;
    v21[0] = v10;
    v21[1] = self;
    [v15 enumerateObjectsUsingBlock:v20];
    v14 = v21;
    goto LABEL_7;
  }

  v17 = [v25[5] componentsJoinedByString:@"_"];
  v16 = [NSString stringWithFormat:@"%@_%@", v17, v6];
  [v10 addObject:v16];
LABEL_9:

  v18 = [v10 sortedArrayUsingSelector:"compare:"];

  _Block_object_dispose(&v24, 8);

  return v18;
}

@end