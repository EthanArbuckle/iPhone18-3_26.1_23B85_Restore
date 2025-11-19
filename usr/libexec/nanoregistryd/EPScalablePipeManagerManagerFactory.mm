@interface EPScalablePipeManagerManagerFactory
+ (id)sharedPipeManagerManagerFactory;
- (EPScalablePipeManagerManagerFactory)init;
- (id)pipeManagerManagerWithName:(id)a3 type:(int64_t)a4 priority:(int64_t)a5;
@end

@implementation EPScalablePipeManagerManagerFactory

+ (id)sharedPipeManagerManagerFactory
{
  if (qword_1001B3A68 != -1)
  {
    sub_100103678();
  }

  v3 = qword_1001B3A60;

  return v3;
}

- (EPScalablePipeManagerManagerFactory)init
{
  v6.receiver = self;
  v6.super_class = EPScalablePipeManagerManagerFactory;
  v2 = [(EPScalablePipeManagerManagerFactory *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    pipeManagers = v2->_pipeManagers;
    v2->_pipeManagers = v3;
  }

  return v2;
}

- (id)pipeManagerManagerWithName:(id)a3 type:(int64_t)a4 priority:(int64_t)a5
{
  v8 = a3;
  v9 = [(NSMapTable *)self->_pipeManagers objectForKey:v8];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000A98C0();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = sub_1000A98C0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v18 = 134218242;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    v14 = "EPScalablePipeManagerManagerFactory: Reusing existing EPScalablePipeManagerManager %p to manage pipe %@";
    goto LABEL_8;
  }

  v10 = [[EPScalablePipeManagerManager alloc] initWithName:v8 type:a4 priority:a5];
  [(NSMapTable *)self->_pipeManagers setObject:v10 forKey:v8];
  v15 = sub_1000A98C0();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (!v16)
  {
    goto LABEL_10;
  }

  v13 = sub_1000A98C0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218242;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    v14 = "EPScalablePipeManagerManagerFactory: Created new EPScalablePipeManagerManager %p to manage pipe %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v18, 0x16u);
  }

LABEL_9:

LABEL_10:

  return v10;
}

@end