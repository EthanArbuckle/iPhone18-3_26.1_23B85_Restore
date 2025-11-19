@interface PolicyManager
+ (id)instance;
- (PolicyManager)init;
- (void)activateHIDPolicy;
- (void)activeHIDDeviceCountDidChange:(id)a3;
- (void)deactivateHIDPolicy;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PolicyManager

+ (id)instance
{
  if (qword_1000DDA88 != -1)
  {
    sub_100072C00();
  }

  v3 = qword_1000DDA80;

  return v3;
}

- (PolicyManager)init
{
  v5.receiver = self;
  v5.super_class = PolicyManager;
  v2 = [(PolicyManager *)&v5 init];
  if (v2)
  {
    v3 = pthread_self();
    pthread_getschedparam(v3, &v2->_defaultMainThreadSchedPolicy, &v2->_defaultMainThreadSchedParam);
    v2->_activeHIDDeviceCount = 0;
    [(PolicyManager *)v2 addObserver:v2 forKeyPath:@"activeHIDDeviceCount" options:3 context:0];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  if ([a3 isEqualToString:@"activeHIDDeviceCount"])
  {
    [(PolicyManager *)self activeHIDDeviceCountDidChange:v8];
  }
}

- (void)activeHIDDeviceCountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  v8 = [v7 unsignedIntegerValue];
  v9 = qword_1000DDBC8;
  if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(PolicyManager *)self activateHIDPolicy];
    return;
  }

  sub_100072C14(v6, v8, v9);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v8)
  {
    [(PolicyManager *)self deactivateHIDPolicy];
  }
}

- (void)activateHIDPolicy
{
  *v4.__opaque = HIDWORD(*&self->_defaultMainThreadSchedParam);
  v4.sched_priority = 63;
  v3 = pthread_self();
  pthread_setschedparam(v3, self->_defaultMainThreadSchedPolicy, &v4);
}

- (void)deactivateHIDPolicy
{
  v3 = pthread_self();
  defaultMainThreadSchedPolicy = self->_defaultMainThreadSchedPolicy;

  pthread_setschedparam(v3, defaultMainThreadSchedPolicy, &self->_defaultMainThreadSchedParam);
}

@end