@interface KTStateTransitionPathStep
+ (id)failure:(id)failure pathFromDictionary:(id)dictionary;
+ (id)pathFromDictionary:(id)dictionary;
+ (id)success;
- (KTStateTransitionPathStep)initWithExpectedFailure:(id)failure withPath:(id)path;
- (KTStateTransitionPathStep)initWithPath:(id)path;
- (id)description;
- (id)initAsSuccess;
- (id)nextStep:(id)step;
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

- (KTStateTransitionPathStep)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = KTStateTransitionPathStep;
  v6 = [(KTStateTransitionPathStep *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_successState = 0;
    objc_storeStrong(&v6->_followStates, path);
    expectedFailure = v7->_expectedFailure;
    v7->_expectedFailure = 0;
  }

  return v7;
}

- (KTStateTransitionPathStep)initWithExpectedFailure:(id)failure withPath:(id)path
{
  failureCopy = failure;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = KTStateTransitionPathStep;
  v9 = [(KTStateTransitionPathStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_successState = 0;
    objc_storeStrong(&v9->_followStates, path);
    objc_storeStrong(&v10->_expectedFailure, failure);
  }

  return v10;
}

- (id)nextStep:(id)step
{
  stepCopy = step;
  followStates = [(KTStateTransitionPathStep *)self followStates];
  v6 = [followStates objectForKeyedSubscript:stepCopy];

  return v6;
}

- (id)description
{
  followStates = [(KTStateTransitionPathStep *)self followStates];
  allKeys = [followStates allKeys];
  v4 = [NSString stringWithFormat:@"<OSTPath(%@)>", allKeys];

  return v4;
}

+ (id)success
{
  initAsSuccess = [[KTStateTransitionPathStep alloc] initAsSuccess];

  return initAsSuccess;
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
    v9 = &IDSCopyAddressDestinationForDestination_ptr;
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
          v13 = v9[283];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [KTStateTransitionPathStep pathFromDictionary:v12];
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
  v17 = [KTStateTransitionPathStep alloc];
  if (v16)
  {
    initAsSuccess = [(KTStateTransitionPathStep *)v17 initWithPath:v4];
  }

  else
  {
    initAsSuccess = [(KTStateTransitionPathStep *)v17 initAsSuccess];
  }

  v19 = initAsSuccess;

  return v19;
}

+ (id)failure:(id)failure pathFromDictionary:(id)dictionary
{
  failureCopy = failure;
  v6 = [KTStateTransitionPathStep pathFromDictionary:dictionary];
  v7 = v6[3];
  v6[3] = failureCopy;

  return v6;
}

@end