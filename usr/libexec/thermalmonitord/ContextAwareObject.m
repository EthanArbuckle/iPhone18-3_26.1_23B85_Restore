@interface ContextAwareObject
- (BOOL)isContextTriggered;
- (BOOL)synchContext;
- (id)initCTXBase;
- (int)getContextState;
@end

@implementation ContextAwareObject

- (id)initCTXBase
{
  v3.receiver = self;
  v3.super_class = ContextAwareObject;
  result = [(ContextAwareObject *)&v3 init];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (int)getContextState
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000512A0(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return -1;
}

- (BOOL)isContextTriggered
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000512D8(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

- (BOOL)synchContext
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051310(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

@end