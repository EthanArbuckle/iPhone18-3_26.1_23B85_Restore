@interface MONotifier(MODispatcherUtility)
@end

@implementation MONotifier(MODispatcherUtility)

- (void)registerDispatcher:()MODispatcherUtility forNotification:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 117;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Notifier does not have a dispatch queue - did you init with name ? (in %s:%d)", v1, 0x12u);
}

- (void)unregisterDispatcher:()MODispatcherUtility .cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 137;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Notifier does not have a dispatch queue - did you init with name ? (in %s:%d)", v1, 0x12u);
}

@end