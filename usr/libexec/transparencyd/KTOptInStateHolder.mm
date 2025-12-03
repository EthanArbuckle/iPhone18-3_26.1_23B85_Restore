@interface KTOptInStateHolder
- (KTOptInStateHolder)init;
- (void)completedCurrentTarget;
@end

@implementation KTOptInStateHolder

- (KTOptInStateHolder)init
{
  v7.receiver = self;
  v7.super_class = KTOptInStateHolder;
  v2 = [(KTOptInStateHolder *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(KTOptInStateHolder *)v2 setTargetOptInStates:v3];

    v4 = +[NSMutableDictionary dictionary];
    [(KTOptInStateHolder *)v2 setCurrentStates:v4];

    v5 = v2;
  }

  return v2;
}

- (void)completedCurrentTarget
{
  targetOptInStates = [(KTOptInStateHolder *)self targetOptInStates];
  currentTarget = [(KTOptInStateHolder *)self currentTarget];
  v5 = [targetOptInStates objectForKeyedSubscript:currentTarget];

  if (v5)
  {
    targetResolved = [v5 targetResolved];
    [targetResolved fulfill];

    targetOptInStates2 = [(KTOptInStateHolder *)self targetOptInStates];
    currentTarget2 = [(KTOptInStateHolder *)self currentTarget];
    [targetOptInStates2 setObject:0 forKeyedSubscript:currentTarget2];

    [(KTOptInStateHolder *)self setCurrentTarget:0];
  }

  else
  {
    if (qword_10038BD00 != -1)
    {
      sub_10024A5D8();
    }

    v9 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "asked to complete target, but didn't have one", v10, 2u);
    }
  }
}

@end