@interface NRLinkDirectorMessageManager
- (id)description;
@end

@implementation NRLinkDirectorMessageManager

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v22 = objc_alloc_init(NSMutableDictionary);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v3;
  if (self)
  {
    latestMessageDictionary = self->_latestMessageDictionary;
  }

  else
  {
    latestMessageDictionary = 0;
  }

  obj = [(NSMutableDictionary *)latestMessageDictionary allKeys];
  v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v23)
  {
    v20 = *v31;
    v21 = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v5;
        if (self)
        {
          v6 = self->_latestMessageDictionary;
        }

        else
        {
          v6 = 0;
        }

        v24 = *(*(&v30 + 1) + 8 * v5);
        v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:?];
        v8 = objc_alloc_init(NSMutableDictionary);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = [v7 allKeys];
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [v7 objectForKeyedSubscript:v14];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = sub_1000292B4([v14 unsignedCharValue]);
                  [v8 setObject:v15 forKeyedSubscript:v16];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        [v22 setObject:v8 forKeyedSubscript:v24];
        v5 = v25 + 1;
        self = v21;
      }

      while ((v25 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  [v18 appendFormat:@"%@", v22];

  return v18;
}

@end