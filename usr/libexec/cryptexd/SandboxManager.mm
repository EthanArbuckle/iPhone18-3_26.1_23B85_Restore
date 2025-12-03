@interface SandboxManager
+ (id)getManager;
- (SandboxManager)init;
- (void)init;
@end

@implementation SandboxManager

- (SandboxManager)init
{
  v8.receiver = self;
  v8.super_class = SandboxManager;
  v2 = [(SandboxManager *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.libcryptex", "SandboxManager");
    [(SandboxManager *)v2 setLog_handle:v3];

    v4 = objc_alloc_init(NSMutableDictionary);
    [(SandboxManager *)v2 setSandboxHandles:v4];

    sandboxHandles = [(SandboxManager *)v2 sandboxHandles];

    if (!sandboxHandles)
    {
      [(SandboxManager *)&v7 init];
    }
  }

  return v2;
}

+ (id)getManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__SandboxManager_getManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getManager_once_token != -1)
  {
    dispatch_once(&getManager_once_token, block);
  }

  v2 = getManager_manager;

  return v2;
}

void __28__SandboxManager_getManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = getManager_manager;
  getManager_manager = v1;

  if (!getManager_manager)
  {
    __28__SandboxManager_getManager__block_invoke_cold_1(&v3, v4);
  }
}

- (void)init
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_3();
  v3 = *self;
  _os_crash_msg();
  __break(1u);
}

void __28__SandboxManager_getManager__block_invoke_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end