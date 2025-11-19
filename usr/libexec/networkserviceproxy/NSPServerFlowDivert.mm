@interface NSPServerFlowDivert
- (NSPServerFlowDivert)init;
- (void)dealloc;
@end

@implementation NSPServerFlowDivert

- (NSPServerFlowDivert)init
{
  v14.receiver = self;
  v14.super_class = NSPServerFlowDivert;
  v2 = [(NSPServerFlowDivert *)&v14 init];
  if (v2)
  {
    v3 = nw_context_create();
    context = v2->_context;
    v2->_context = v3;

    v5 = v2->_context;
    v6 = NPGetInternalQueue();
    v12 = v2;
    nw_context_set_idle_handler();

    v7 = v2->_context;
    nw_context_set_isolate_protocol_cache();
    v8 = v2->_context;
    nw_context_activate();
    v9 = v12;
    p_super = &v12->super;
  }

  else
  {
    p_super = nplog_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  sub_1000A0904(self, 1);
  v3.receiver = self;
  v3.super_class = NSPServerFlowDivert;
  [(NSPServerFlowDivert *)&v3 dealloc];
}

@end