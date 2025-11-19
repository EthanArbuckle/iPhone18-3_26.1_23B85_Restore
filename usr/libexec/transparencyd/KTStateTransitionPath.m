@interface KTStateTransitionPath
+ (id)pathFromDictionary:(id)a3;
- (KTStateTransitionPath)initWithState:(id)a3 pathStep:(id)a4;
- (id)asPathStep;
@end

@implementation KTStateTransitionPath

- (KTStateTransitionPath)initWithState:(id)a3 pathStep:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KTStateTransitionPath;
  v9 = [(KTStateTransitionPath *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_initialState, a3);
    objc_storeStrong(&v10->_pathStep, a4);
  }

  return v10;
}

- (id)asPathStep
{
  v3 = [KTStateTransitionPathStep alloc];
  v4 = [(KTStateTransitionPath *)self initialState];
  v9 = v4;
  v5 = [(KTStateTransitionPath *)self pathStep];
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [(KTStateTransitionPathStep *)v3 initWithPath:v6];

  return v7;
}

+ (id)pathFromDictionary:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *v16;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      v10 = [v3 objectForKeyedSubscript:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [[KTStateTransitionPath alloc] initWithState:v9 pathStep:v10];
LABEL_14:

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [KTStateTransitionPath alloc];
        v13 = [KTStateTransitionPathStep pathFromDictionary:v10];
        v11 = [(KTStateTransitionPath *)v12 initWithState:v9 pathStep:v13];

        goto LABEL_14;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v11 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v11;
}

@end