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
  v3 = [(KTOptInStateHolder *)self targetOptInStates];
  v4 = [(KTOptInStateHolder *)self currentTarget];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 targetResolved];
    [v6 fulfill];

    v7 = [(KTOptInStateHolder *)self targetOptInStates];
    v8 = [(KTOptInStateHolder *)self currentTarget];
    [v7 setObject:0 forKeyedSubscript:v8];

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