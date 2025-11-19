@interface ContextAwareThermalManager
+ (id)sharedInstance;
- (BOOL)isContextTriggered:(int)a3;
- (ContextAwareThermalManager)init;
- (id)createNewSolarContext:(BOOL)a3;
- (int)getContextState:(int)a3;
- (void)iterateAndUpdateContexts;
@end

@implementation ContextAwareThermalManager

+ (id)sharedInstance
{
  if (qword_1000AAC18 != -1)
  {
    sub_100053A28();
  }

  return qword_1000AAC20;
}

- (void)iterateAndUpdateContexts
{
  if (CFArrayGetCount(self->ctxObjects) >= 1)
  {
    v3 = 0;
    do
    {
      [CFArrayGetValueAtIndex(self->ctxObjects v3++)];
    }

    while (CFArrayGetCount(self->ctxObjects) > v3);
  }
}

- (ContextAwareThermalManager)init
{
  v4.receiver = self;
  v4.super_class = ContextAwareThermalManager;
  v2 = [(ContextAwareThermalManager *)&v4 init];
  if (v2)
  {
    v2->ctxObjects = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  return v2;
}

- (id)createNewSolarContext:(BOOL)a3
{
  v5 = off_100084A18;
  if (!a3)
  {
    v5 = off_1000849F0;
  }

  v6 = objc_alloc_init(*v5);
  if (v6)
  {
    CFArrayAppendValue(self->ctxObjects, v6);
    CFRelease(v6);
  }

  else
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053A3C(a3, v7);
    }
  }

  return v6;
}

- (int)getContextState:(int)a3
{
  if (CFArrayGetCount(self->ctxObjects) < 1)
  {
LABEL_5:
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Cannot get ContextValue", v9, 2u);
      }
    }

    return -1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->ctxObjects, v5);
      if ([ValueAtIndex ctxType] == a3)
      {
        break;
      }

      if (CFArrayGetCount(self->ctxObjects) <= ++v5)
      {
        goto LABEL_5;
      }
    }

    return [ValueAtIndex getContextState];
  }
}

- (BOOL)isContextTriggered:(int)a3
{
  if (CFArrayGetCount(self->ctxObjects) < 1)
  {
LABEL_5:
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> No ContextTriggered Match", v9, 2u);
      }
    }

    return 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->ctxObjects, v5);
      if ([ValueAtIndex ctxType] == a3)
      {
        break;
      }

      if (CFArrayGetCount(self->ctxObjects) <= ++v5)
      {
        goto LABEL_5;
      }
    }

    return [ValueAtIndex isContextTriggered];
  }
}

@end