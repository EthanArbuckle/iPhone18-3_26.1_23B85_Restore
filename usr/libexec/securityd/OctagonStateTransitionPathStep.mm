@interface OctagonStateTransitionPathStep
+ (id)pathFromDictionary:(id)dictionary;
+ (id)success;
- (OctagonStateTransitionPathStep)initWithPath:(id)path;
- (id)description;
- (id)initAsSuccess;
- (id)nextStep:(id)step;
@end

@implementation OctagonStateTransitionPathStep

- (id)description
{
  followStates = [(OctagonStateTransitionPathStep *)self followStates];
  allKeys = [followStates allKeys];
  v4 = [NSString stringWithFormat:@"<OSTPath(%@)>", allKeys];

  return v4;
}

- (id)nextStep:(id)step
{
  stepCopy = step;
  followStates = [(OctagonStateTransitionPathStep *)self followStates];
  v6 = [followStates objectForKeyedSubscript:stepCopy];

  return v6;
}

- (OctagonStateTransitionPathStep)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = OctagonStateTransitionPathStep;
  v6 = [(OctagonStateTransitionPathStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_successState = 0;
    objc_storeStrong(&v6->_followStates, path);
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

+ (id)pathFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = &swift_errorRelease_ptr;
    v21 = allKeys;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [dictionaryCopy objectForKeyedSubscript:v11];
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
            allKeys = v21;
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = [v4 count];
  v17 = [OctagonStateTransitionPathStep alloc];
  if (v16)
  {
    initAsSuccess = [(OctagonStateTransitionPathStep *)v17 initWithPath:v4];
  }

  else
  {
    initAsSuccess = [(OctagonStateTransitionPathStep *)v17 initAsSuccess];
  }

  v19 = initAsSuccess;

  return v19;
}

+ (id)success
{
  initAsSuccess = [[OctagonStateTransitionPathStep alloc] initAsSuccess];

  return initAsSuccess;
}

@end