@interface CAFdConnectionProxy
@end

@implementation CAFdConnectionProxy

void __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CAFDLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_cold_1();
  }

  v3 = [WeakRetained agent];
  [v3 _removeConnection:WeakRetained];

  [WeakRetained invalidateAndRemoveAssertions];
}

void __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CAFDLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_29_cold_1();
  }

  v3 = [WeakRetained agent];
  [v3 _removeConnection:WeakRetained];

  [WeakRetained invalidateAndRemoveAssertions];
}

void __50___CAFdConnectionProxy_createAssertionWithAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  v5 = [*v2 assertions];
  [v5 removeObject:v4];

  v6 = CAFDAssertionLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50___CAFdConnectionProxy_createAssertionWithAction___block_invoke_cold_1(v2);
  }

  os_unfair_lock_unlock(*v2 + 4);
}

void __75___CAFdConnectionProxy_readFromPluginID_instanceIDs_priority_withResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CAFResponse alloc];
  v4 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:2 userInfo:0];
  v3 = [v2 initWithError:v4];
  (*(v1 + 16))(v1, v3);
}

void __69___CAFdConnectionProxy_writeToPluginID_values_priority_withResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CAFResponse alloc];
  v4 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:2 userInfo:0];
  v3 = [v2 initWithError:v4];
  (*(v1 + 16))(v1, v3);
}

void __79___CAFdConnectionProxy_requestPluginID_instanceID_value_priority_withResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __50___CAFdConnectionProxy_didUpdateCurrentCarConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 didUpdateCurrentCarConfig:*(a1 + 40)];
}

void __40___CAFdConnectionProxy_didUpdateConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 didUpdateConfig:*(a1 + 40)];
}

void __49___CAFdConnectionProxy_didUpdatePluginID_values___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __49___CAFdConnectionProxy_didUpdatePluginID_values___block_invoke_124(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 didUpdatePluginID:*(a1 + 40) values:*(a1 + 48)];
}

void __73___CAFdConnectionProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 didRequestPluginID:*(a1 + 40) instanceID:*(a1 + 48) value:*(a1 + 56) withResponse:*(a1 + 64)];
}

void __59___CAFdConnectionProxy_didNotifyPluginID_instanceID_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  [v2 didNotifyPluginID:*(a1 + 40) instanceID:*(a1 + 48) value:*(a1 + 56)];
}

void __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49___CAFdConnectionProxy_initWithConnection_agent___block_invoke_29_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50___CAFdConnectionProxy_createAssertionWithAction___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 assertions];
  [v1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end