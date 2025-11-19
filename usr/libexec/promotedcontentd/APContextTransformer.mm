@interface APContextTransformer
- (APContextTransformer)initWithContext:(id)a3 contentIdentifier:(id)a4 placementType:(int64_t)a5;
- (id)transformedContext;
- (void)_addAdjacentContext;
- (void)_addContext:(id)a3;
- (void)_addCurrentArticleContext;
@end

@implementation APContextTransformer

- (APContextTransformer)initWithContext:(id)a3 contentIdentifier:(id)a4 placementType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = APContextTransformer;
  v11 = [(APContextTransformer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentIdentifier, a4);
    objc_storeStrong(&v12->_originalContext, a3);
    v12->_placementType = a5;
    v13 = [[NSMutableDictionary alloc] initWithCapacity:1];
    bodyContext = v12->_bodyContext;
    v12->_bodyContext = v13;

    v15 = [[NSMutableDictionary alloc] initWithCapacity:1];
    headerContext = v12->_headerContext;
    v12->_headerContext = v15;
  }

  return v12;
}

- (void)_addCurrentArticleContext
{
  v11 = [(APContextTransformer *)self originalContext];
  v3 = [(APContextTransformer *)self bodyContext];
  v4 = [v3 objectForKey:@"currentArticle"];
  v5 = [v11 current];
  v6 = [v5 categories];

  v7 = [v11 current];
  v8 = [v7 keywords];

  v9 = [v11 current];
  v10 = [v9 language];

  [v4 setValue:v6 forKey:@"categories"];
  [v4 setValue:v8 forKey:@"keywords"];
  [v4 setValue:v10 forKey:@"sourceContentLanguage"];
  [v3 setValue:v4 forKey:@"currentArticle"];
}

- (void)_addContext:(id)a3
{
  v23 = a3;
  if ([v23 adjacency] == 151)
  {
    v4 = &APLegacyNextArticleKey;
  }

  else if ([v23 adjacency] == 150)
  {
    v4 = &APLegacyGroupContextKey;
  }

  else if ([v23 adjacency] == 152)
  {
    v4 = &APLegacyGroupContextAboveKey;
  }

  else
  {
    if ([v23 adjacency] != 156)
    {
      goto LABEL_22;
    }

    v4 = &APLegacyGroupContextBelowKey;
  }

  v5 = *v4;
  v6 = [(APContextTransformer *)self bodyContext];
  v22 = v5;
  v7 = [v6 objectForKey:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [v23 categories];

  if (v10)
  {
    v11 = [v23 categories];
    [v9 addObjectsFromArray:v11];
  }

  v21 = [v8 valueForKey:@"categories"];
  v12 = [v9 arrayByAddingObjectsFromArray:?];
  if (v12)
  {
    [v8 setObject:v12 forKey:@"categories"];
  }

  v13 = objc_alloc_init(NSMutableArray);
  v14 = [v23 keywords];

  if (v14)
  {
    v15 = [v23 keywords];
    [v13 addObjectsFromArray:v15];
  }

  v16 = [v8 valueForKey:@"keywords"];
  v17 = [v13 arrayByAddingObjectsFromArray:v16];
  if (v17)
  {
    [v8 setObject:v17 forKey:@"keywords"];
  }

  v18 = [v23 language];

  if (v18)
  {
    v18 = [v23 language];
  }

  [v8 setValue:v18 forKey:@"languages"];
  v19 = [(APContextTransformer *)self bodyContext];
  v20 = [NSDictionary dictionaryWithDictionary:v8];
  [v19 setValue:v20 forKey:v22];

LABEL_22:
}

- (void)_addAdjacentContext
{
  v3 = [(APContextTransformer *)self originalContext];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 adjacent];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(APContextTransformer *)self _addContext:v9];
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)transformedContext
{
  v30 = [(APContextTransformer *)self originalContext];
  v3 = [v30 supplementalContext];
  v4 = [(APContextTransformer *)self bodyContext];
  v31 = [(APContextTransformer *)self headerContext];
  v32 = v4;
  v29 = self;
  if (![(APContextTransformer *)self placementType]|| [(APContextTransformer *)self placementType]== 4)
  {
    if (qword_1004E6B60 != -1)
    {
      sub_10039412C();
    }

    v5 = [v3 valueForKey:qword_1004E6B58];

    if (!v5)
    {
      v6 = [v3 mutableCopy];
      if ([(APContextTransformer *)self placementType])
      {
        v7 = @"NATIVE";
      }

      else
      {
        v7 = @"ANY";
      }

      [v6 setObject:v7 forKey:qword_1004E6B58];
      v8 = [v6 copy];

      v3 = v8;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 componentsSeparatedByString:@"."];
        v16 = [v15 firstObject];
        v17 = [v16 isEqualToString:@"body"];

        v18 = v32;
        if ((v17 & 1) != 0 || ([v15 firstObject], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"header"), v19, v18 = v31, v20))
        {
          [v18 _addProperty:v13 fromSupplementalContext:obj];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v21 = [NSNumber numberWithInt:1];
  [v31 setObject:v21 forKey:@"onboard_status"];

  v22 = [(APContextTransformer *)v29 contentIdentifier];
  [v32 setValue:v22 forKey:@"adOpId"];

  [(APContextTransformer *)v29 _addCurrentArticleContext];
  [(APContextTransformer *)v29 _addAdjacentContext];
  v23 = [v30 requestedAdIdentifier];

  if (v23)
  {
    v24 = [v32 objectForKey:@"feedMetadata"];
    if (!v24)
    {
      v24 = [[NSMutableDictionary alloc] initWithCapacity:1];
    }

    v25 = [v30 requestedAdIdentifier];
    [v24 setValue:v25 forKey:@"customTargetingId"];

    [v32 setValue:v24 forKey:@"feedMetadata"];
    v26 = [v30 requestedAdIdentifier];
    [v32 setValue:v26 forKey:@"customTargetingId"];
  }

  v27 = [[NSDictionary alloc] initWithObjectsAndKeys:{v32, @"body", v31, @"header", 0}];

  return v27;
}

@end