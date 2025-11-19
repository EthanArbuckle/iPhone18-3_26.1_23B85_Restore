@interface OctagonStateTransitionPath
+ (id)pathFromDictionary:(id)a3;
- (OctagonStateTransitionPath)initWithState:(id)a3 pathStep:(id)a4;
- (id)asPathStep;
- (id)description;
@end

@implementation OctagonStateTransitionPath

- (id)asPathStep
{
  v3 = [OctagonStateTransitionPathStep alloc];
  v4 = [(OctagonStateTransitionPath *)self initialState];
  v9 = v4;
  v5 = [(OctagonStateTransitionPath *)self pathStep];
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [(OctagonStateTransitionPathStep *)v3 initWithPath:v6];

  return v7;
}

- (id)description
{
  v3 = [(OctagonStateTransitionPath *)self initialState];
  v4 = [(OctagonStateTransitionPath *)self pathStep];
  v5 = [NSString stringWithFormat:@"<OctagonStateTransitionPath: %@ %@", v3, v4];

  return v5;
}

- (OctagonStateTransitionPath)initWithState:(id)a3 pathStep:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OctagonStateTransitionPath;
  v9 = [(OctagonStateTransitionPath *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_initialState, a3);
    objc_storeStrong(&v10->_pathStep, a4);
  }

  return v10;
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
        v11 = [[OctagonStateTransitionPath alloc] initWithState:v9 pathStep:v10];
LABEL_14:

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [OctagonStateTransitionPath alloc];
        v13 = [OctagonStateTransitionPathStep pathFromDictionary:v10];
        v11 = [(OctagonStateTransitionPath *)v12 initWithState:v9 pathStep:v13];

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