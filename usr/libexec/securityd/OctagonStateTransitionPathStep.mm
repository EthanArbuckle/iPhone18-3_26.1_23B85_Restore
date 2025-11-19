@interface OctagonStateTransitionPathStep
+ (id)pathFromDictionary:(id)a3;
+ (id)success;
- (OctagonStateTransitionPathStep)initWithPath:(id)a3;
- (id)description;
- (id)initAsSuccess;
- (id)nextStep:(id)a3;
@end

@implementation OctagonStateTransitionPathStep

- (id)description
{
  v2 = [(OctagonStateTransitionPathStep *)self followStates];
  v3 = [v2 allKeys];
  v4 = [NSString stringWithFormat:@"<OSTPath(%@)>", v3];

  return v4;
}

- (id)nextStep:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateTransitionPathStep *)self followStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (OctagonStateTransitionPathStep)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OctagonStateTransitionPathStep;
  v6 = [(OctagonStateTransitionPathStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_successState = 0;
    objc_storeStrong(&v6->_followStates, a3);
  }

  return v7;
}

- (id)initAsSuccess
{
  v6.receiver = self;
  v6.super_class = OctagonStateTransitionPathStep;
  v2 = [(OctagonStateTransitionPathStep *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_successState = 1;
    followStates = v2->_followStates;
    v2->_followStates = &__NSDictionary0__struct;
  }

  return v3;
}

+ (id)pathFromDictionary:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = &swift_errorRelease_ptr;
    v21 = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          v13 = v9[362];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [OctagonStateTransitionPathStep pathFromDictionary:v12];
            v15 = v14 = v9;
            [v4 setObject:v15 forKeyedSubscript:v11];

            v9 = v14;
            v5 = v21;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = [v4 count];
  v17 = [OctagonStateTransitionPathStep alloc];
  if (v16)
  {
    v18 = [(OctagonStateTransitionPathStep *)v17 initWithPath:v4];
  }

  else
  {
    v18 = [(OctagonStateTransitionPathStep *)v17 initAsSuccess];
  }

  v19 = v18;

  return v19;
}

+ (id)success
{
  v2 = [[OctagonStateTransitionPathStep alloc] initAsSuccess];

  return v2;
}

@end