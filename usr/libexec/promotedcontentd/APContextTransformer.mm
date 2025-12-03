@interface APContextTransformer
- (APContextTransformer)initWithContext:(id)context contentIdentifier:(id)identifier placementType:(int64_t)type;
- (id)transformedContext;
- (void)_addAdjacentContext;
- (void)_addContext:(id)context;
- (void)_addCurrentArticleContext;
@end

@implementation APContextTransformer

- (APContextTransformer)initWithContext:(id)context contentIdentifier:(id)identifier placementType:(int64_t)type
{
  contextCopy = context;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = APContextTransformer;
  v11 = [(APContextTransformer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentIdentifier, identifier);
    objc_storeStrong(&v12->_originalContext, context);
    v12->_placementType = type;
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
  originalContext = [(APContextTransformer *)self originalContext];
  bodyContext = [(APContextTransformer *)self bodyContext];
  v4 = [bodyContext objectForKey:@"currentArticle"];
  current = [originalContext current];
  categories = [current categories];

  current2 = [originalContext current];
  keywords = [current2 keywords];

  current3 = [originalContext current];
  language = [current3 language];

  [v4 setValue:categories forKey:@"categories"];
  [v4 setValue:keywords forKey:@"keywords"];
  [v4 setValue:language forKey:@"sourceContentLanguage"];
  [bodyContext setValue:v4 forKey:@"currentArticle"];
}

- (void)_addContext:(id)context
{
  contextCopy = context;
  if ([contextCopy adjacency] == 151)
  {
    v4 = &APLegacyNextArticleKey;
  }

  else if ([contextCopy adjacency] == 150)
  {
    v4 = &APLegacyGroupContextKey;
  }

  else if ([contextCopy adjacency] == 152)
  {
    v4 = &APLegacyGroupContextAboveKey;
  }

  else
  {
    if ([contextCopy adjacency] != 156)
    {
      goto LABEL_22;
    }

    v4 = &APLegacyGroupContextBelowKey;
  }

  v5 = *v4;
  bodyContext = [(APContextTransformer *)self bodyContext];
  v22 = v5;
  v7 = [bodyContext objectForKey:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v9 = objc_alloc_init(NSMutableArray);
  categories = [contextCopy categories];

  if (categories)
  {
    categories2 = [contextCopy categories];
    [v9 addObjectsFromArray:categories2];
  }

  v21 = [v8 valueForKey:@"categories"];
  v12 = [v9 arrayByAddingObjectsFromArray:?];
  if (v12)
  {
    [v8 setObject:v12 forKey:@"categories"];
  }

  v13 = objc_alloc_init(NSMutableArray);
  keywords = [contextCopy keywords];

  if (keywords)
  {
    keywords2 = [contextCopy keywords];
    [v13 addObjectsFromArray:keywords2];
  }

  v16 = [v8 valueForKey:@"keywords"];
  v17 = [v13 arrayByAddingObjectsFromArray:v16];
  if (v17)
  {
    [v8 setObject:v17 forKey:@"keywords"];
  }

  language = [contextCopy language];

  if (language)
  {
    language = [contextCopy language];
  }

  [v8 setValue:language forKey:@"languages"];
  bodyContext2 = [(APContextTransformer *)self bodyContext];
  v20 = [NSDictionary dictionaryWithDictionary:v8];
  [bodyContext2 setValue:v20 forKey:v22];

LABEL_22:
}

- (void)_addAdjacentContext
{
  originalContext = [(APContextTransformer *)self originalContext];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  adjacent = [originalContext adjacent];
  v5 = [adjacent countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(adjacent);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(APContextTransformer *)self _addContext:v9];
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [adjacent countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)transformedContext
{
  originalContext = [(APContextTransformer *)self originalContext];
  supplementalContext = [originalContext supplementalContext];
  bodyContext = [(APContextTransformer *)self bodyContext];
  headerContext = [(APContextTransformer *)self headerContext];
  v32 = bodyContext;
  selfCopy = self;
  if (![(APContextTransformer *)self placementType]|| [(APContextTransformer *)self placementType]== 4)
  {
    if (qword_1004E6B60 != -1)
    {
      sub_10039412C();
    }

    v5 = [supplementalContext valueForKey:qword_1004E6B58];

    if (!v5)
    {
      v6 = [supplementalContext mutableCopy];
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

      supplementalContext = v8;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = supplementalContext;
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
        firstObject = [v15 firstObject];
        v17 = [firstObject isEqualToString:@"body"];

        v18 = v32;
        if ((v17 & 1) != 0 || ([v15 firstObject], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"header"), v19, v18 = headerContext, v20))
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
  [headerContext setObject:v21 forKey:@"onboard_status"];

  contentIdentifier = [(APContextTransformer *)selfCopy contentIdentifier];
  [v32 setValue:contentIdentifier forKey:@"adOpId"];

  [(APContextTransformer *)selfCopy _addCurrentArticleContext];
  [(APContextTransformer *)selfCopy _addAdjacentContext];
  requestedAdIdentifier = [originalContext requestedAdIdentifier];

  if (requestedAdIdentifier)
  {
    v24 = [v32 objectForKey:@"feedMetadata"];
    if (!v24)
    {
      v24 = [[NSMutableDictionary alloc] initWithCapacity:1];
    }

    requestedAdIdentifier2 = [originalContext requestedAdIdentifier];
    [v24 setValue:requestedAdIdentifier2 forKey:@"customTargetingId"];

    [v32 setValue:v24 forKey:@"feedMetadata"];
    requestedAdIdentifier3 = [originalContext requestedAdIdentifier];
    [v32 setValue:requestedAdIdentifier3 forKey:@"customTargetingId"];
  }

  v27 = [[NSDictionary alloc] initWithObjectsAndKeys:{v32, @"body", headerContext, @"header", 0}];

  return v27;
}

@end