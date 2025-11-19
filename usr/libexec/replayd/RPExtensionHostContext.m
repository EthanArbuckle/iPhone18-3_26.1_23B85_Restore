@interface RPExtensionHostContext
- (void)didConnectToVendor:(id)a3;
@end

@implementation RPExtensionHostContext

- (void)didConnectToVendor:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Connected to extension.", v3, 2u);
  }
}

@end