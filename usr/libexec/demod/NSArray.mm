@interface NSArray
+ (NSArray)arrayWithXPCArray:(id)a3;
- (NSArray)initWithXPCArray:(id)a3;
- (id)_convertObjectToNSData:(id)a3;
- (id)xpcArrayFromArray;
- (id)xpcSafeArrayFromArray;
@end

@implementation NSArray

+ (NSArray)arrayWithXPCArray:(id)a3
{
  v3 = a3;
  v4 = [[NSArray alloc] initWithXPCArray:v3];

  return v4;
}

- (NSArray)initWithXPCArray:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = sub_10009FA04;
  v16[3] = sub_10009FA14;
  v17 = +[NSMutableArray array];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10009FA1C;
  v12 = &unk_10016BEE0;
  v14 = &v15;
  v5 = self;
  v13 = v5;
  if (xpc_array_apply(v4, &v9))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5F88(v16, v6);
    }

    v5 = [(NSArray *)v5 initWithArray:*(v16[0] + 40), v9, v10, v11, v12];
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (id)xpcArrayFromArray
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009FDE4;
  v6[3] = &unk_10016BF08;
  v3 = xpc_array_create(0, 0);
  v7 = v3;
  v8 = &v9;
  [(NSArray *)self enumerateObjectsUsingBlock:v6];
  if (v10[3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)xpcSafeArrayFromArray
{
  if (self)
  {
    v31 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = self;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v3)
    {
      goto LABEL_32;
    }

    v4 = v3;
    v5 = &IDSSendMessageOptionFireAndForgetKey_ptr;
    v6 = *v39;
    v7 = &IDSSendMessageOptionFireAndForgetKey_ptr;
    v8 = &IDSSendMessageOptionFireAndForgetKey_ptr;
    v29 = *v39;
    while (1)
    {
      v9 = 0;
      v30 = v4;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = v5[148];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v9;
          v12 = v10;
          v13 = objc_alloc_init(NSMutableDictionary);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              v18 = 0;
              do
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v34 + 1) + 8 * v18);
                v20 = [v14 objectForKeyedSubscript:v19];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (v21 = v7[247], objc_opt_class(), (objc_opt_isKindOfClass()) || (v22 = v8[146], objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v13 setObject:v20 forKeyedSubscript:v19];
                }

                else
                {
                  v23 = v8;
                  if (v20)
                  {
                    [(NSArray *)obj _convertObjectToNSData:v20];
                  }

                  else
                  {
                    +[NSNull null];
                  }
                  v24 = ;
                  [v13 setObject:v24 forKeyedSubscript:v19];

                  v8 = v23;
                  v7 = &IDSSendMessageOptionFireAndForgetKey_ptr;
                }

                v18 = v18 + 1;
              }

              while (v16 != v18);
              v25 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
              v16 = v25;
            }

            while (v25);
          }

          v26 = [v13 copy];
          [v31 addObject:v26];

          v5 = &IDSSendMessageOptionFireAndForgetKey_ptr;
          v6 = v29;
          v4 = v30;
          v9 = v32;
        }

        else
        {
          if (!v10)
          {
            goto LABEL_30;
          }

          v14 = [v10 description];
          [v31 addObject:v14];
        }

LABEL_30:
        v9 = v9 + 1;
      }

      while (v9 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v4)
      {
LABEL_32:

        v27 = [v31 copy];
        goto LABEL_34;
      }
    }
  }

  v27 = &__NSArray0__struct;
LABEL_34:

  return v27;
}

- (id)_convertObjectToNSData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (![v3 conformsToProtocol:&OBJC_PROTOCOL___NSCoding] || (+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", v4, 0, 0), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![NSPropertyListSerialization propertyList:v4 isValidForFormat:200]|| ([NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:0];
        if (!v5)
        {
          v6 = [v4 description];
          v5 = [v6 dataUsingEncoding:4];
        }
      }
    }
  }

  else
  {
    v5 = +[NSData data];
  }

  return v5;
}

@end