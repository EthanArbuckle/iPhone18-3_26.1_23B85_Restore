@interface KTStateTransitionPathStep
+ (id)failure:(id)a3 pathFromDictionary:(id)a4;
+ (id)pathFromDictionary:(id)a3;
+ (id)success;
- (KTStateTransitionPathStep)initWithExpectedFailure:(id)a3 withPath:(id)a4;
- (KTStateTransitionPathStep)initWithPath:(id)a3;
- (id)description;
- (id)initAsSuccess;
- (id)nextStep:(id)a3;
@end

@implementation KTStateTransitionPathStep

- (id)initAsSuccess
{
  v7.receiver = self;
  v7.super_class = KTStateTransitionPathStep;
  v2 = [(KTStateTransitionPathStep *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_successState = 1;
    followStates = v2->_followStates;
    v2->_followStates = &__NSDictionary0__struct;

    expectedFailure = v3->_expectedFailure;
    v3->_expectedFailure = 0;
  }

  return v3;
}

- (KTStateTransitionPathStep)initWithPath:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = KTStateTransitionPathStep;
  v6 = [(KTStateTransitionPathStep *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_successState = 0;
    objc_storeStrong(&v6->_followStates, a3);
    expectedFailure = v7->_expectedFailure;
    v7->_expectedFailure = 0;
  }

  return v7;
}

- (KTStateTransitionPathStep)initWithExpectedFailure:(id)a3 withPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KTStateTransitionPathStep;
  v9 = [(KTStateTransitionPathStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_successState = 0;
    objc_storeStrong(&v9->_followStates, a4);
    objc_storeStrong(&v10->_expectedFailure, a3);
  }

  return v10;
}

- (id)nextStep:(id)a3
{
  v4 = a3;
  v5 = [(KTStateTransitionPathStep *)self followStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)description
{
  v2 = [(KTStateTransitionPathStep *)self followStates];
  v3 = [v2 allKeys];
  v4 = [NSString stringWithFormat:@"<OSTPath(%@)>", v3];

  return v4;
}

+ (id)success
{
  v2 = [[KTStateTransitionPathStep alloc] initAsSuccess];

  return v2;
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
    v9 = NSNotification_ptr;
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
          v13 = v9[102];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [KTStateTransitionPathStep pathFromDictionary:v12];
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
  v17 = [KTStateTransitionPathStep alloc];
  if (v16)
  {
    v18 = [(KTStateTransitionPathStep *)v17 initWithPath:v4];
  }

  else
  {
    v18 = [(KTStateTransitionPathStep *)v17 initAsSuccess];
  }

  v19 = v18;

  return v19;
}

+ (id)failure:(id)a3 pathFromDictionary:(id)a4
{
  v5 = a3;
  v6 = [KTStateTransitionPathStep pathFromDictionary:a4];
  v7 = v6[3];
  v6[3] = v5;

  return v6;
}

@end